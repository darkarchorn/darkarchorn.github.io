from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select
from selenium.webdriver.common.keys import Keys
import time
import json
from bs4 import BeautifulSoup
from function import *

import mysql.connector

hocki = 2
if hocki == 1:
    hocki = 2
else:
    hocki = 1

# create a connection to the database
cnx = mysql.connector.connect(
    host="localhost",
    user="root",
    password="thangthang1!",
    database="darkarchorn$w42g2_lms"
)

# create a cursor object to execute the SQL query
cursor = cnx.cursor()

# execute the SQL query
query = "SELECT JSON_ARRAYAGG(JSON_OBJECT('enrollment_number', enrollment_number, 'id', id)) AS students FROM w42g2_lms.users_user;"
cursor.execute(query)

result = json.loads(cursor.fetchone()[0])

# get the result and write it to a JSON file
with open("output.json", "w", encoding="utf-8") as f:
    json.dump(result, f)

# close the cursor and connection
cursor.close()
cnx.close()

driver = webdriver.Chrome()
driver.get("http://112.137.129.87/qldt/")
dropdown = Select(driver.find_element(By.ID, "SinhvienLmh_term_id"))
dropdown.select_by_index(hocki)
time.sleep(1)

dropdown2 = Select(driver.find_element(By.NAME, "pageSize"))
dropdown2.select_by_index(4)
time.sleep(3)

search_box = driver.find_element(By.XPATH, "//input[@name='SinhvienLmh[lopkhoahocTitle]']")
search_box.send_keys("QH-2020-I/CQ-N-CLC")
search_box.send_keys(Keys.RETURN)
time.sleep(3)

html_source = driver.page_source
soup = BeautifulSoup(html_source, 'html.parser')

td_contents = []
td_elements = soup.select('td')
for td in td_elements:
    if td.text.strip() != '':
        td_contents.append(td.text.strip())

data = td_contents[1:]

alls = []
for i in range(0, len(data), 11):
    all = {}
    all["STT"] = data[i].strip()
    all["Mã SV"] = data[i+1].strip()
    all["Họ và tên"] = data[i+2].strip()
    all["Ngày sinh"] = data[i+3].strip()
    all["Lớp khóa học"] = data[i+4].strip()
    all["Mã LMH"] = data[i+5].strip()
    all["Tên môn học"] = data[i+6].strip()
    all["Nhóm"] = data[i+7].strip()
    all["Số TC"] = data[i+8].strip()
    all["Ghi chú"] = data[i+9].strip()
    all["Học kỳ"] = data[i+10].strip()
    alls.append(all)

students = []
for i in range(0, len(data), 11):
    student = {}
    student["Mã SV"] = data[i+1].strip()
    student["Họ và tên"] = data[i+2].strip()
    student["Ngày sinh"] = data[i+3].strip()
    student["Lớp khóa học"] = data[i+4].strip()
    students.append(student)
    students.append(student)

course_student = []
for i in range(0, len(data), 11):
    all = {}
    all["Mã SV"] = data[i+1].strip()
    all["Mã LMH"] = data[i+5].strip()
    course_student.append(all)

courses_course = []
unique_pairs = set()

for i in range(0, len(data), 11):
    course_dict = {}
    ma_lm = data[i+5].strip()
    ten_mon_hoc = data[i+6].strip()
    course_pair = (ma_lm, ten_mon_hoc)
    
    if course_pair in unique_pairs:
        continue
    
    unique_pairs.add(course_pair)
    course_dict["code"] = ma_lm
    course_dict["name"] = ten_mon_hoc
    courses_course.append(course_dict)

with open("z_alls.json", "w", encoding="utf-8") as f:
    json.dump(alls, f, ensure_ascii=False)

with open("z_students.json", "w", encoding="utf-8") as f:
    json.dump(students, f, ensure_ascii=False)

with open("z_course_student.json", "w", encoding="utf-8") as f:
    json.dump(course_student, f, ensure_ascii=False)

with open("z_course_course.json", "w", encoding="utf-8") as f:
    json.dump(courses_course, f, ensure_ascii=False)


# Read the file with utf-8 encoding
with open("z_course_student.json", "r", encoding="utf-8") as f:
    students_data = json.load(f)

# Read the file with utf-16 encoding
with open("output.json", "r", encoding="utf-8") as f:
    courses_data = json.load(f)

# Merge the data based on the student IDs
merged_data = []
for student in students_data:
    for course in courses_data:
        if student["Mã SV"] == course["enrollment_number"]:
            merged_data.append({"student_id": course["id"], "course_id": student["Mã LMH"]})

# Write the merged data to a new file with utf-8 encoding
with open("merged_data.json", "w", encoding="utf-8") as f:
    json.dump(merged_data, f, ensure_ascii=False)


insert('courses_course_student', 'merged_data.json')
insert_course('courses_course', 'z_course_course.json')

driver.quit()
