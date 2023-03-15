import json
def insert(table_name, json_file):
    with open(json_file, 'r') as f:
        data = json.load(f)
    with open('output.sql', 'w') as f:
        f.write(f"INSERT INTO `{table_name}` (student_id, course_id) VALUES ")
        for record in data:
            sql = f"({record['student_id']}, \"{record['course_id']}\"),"
            f.write(sql)
        f.seek(f.tell() - 1)
        f.truncate()
        f.write(";\nUNLOCK TABLES;\n")
    sql_file = 'web-dev-project/NCLConly-2.sql'
    # Read in the existing SQL file and store each line in a list
    with open(sql_file, 'r', encoding="utf-8") as f:
        content = f.readlines()

    with open('output.sql', 'r', encoding="utf-8") as f:
        new_sql = f.read().strip()

    line_to_replace = None
    for i, line in enumerate(content):
        if line.startswith(f"INSERT INTO `{table_name}`"):
            line_to_replace = i
            break

    if line_to_replace is not None:
        content[line_to_replace] = new_sql

    with open(sql_file, 'w', encoding="utf-8") as f:
        f.writelines(content)

def insert_course(table_name, json_file):
    with open(json_file, 'r', encoding="utf-8") as f:
        data = json.load(f)
    with open('output2.sql', 'w', encoding="utf-8") as f:
        f.write(f"INSERT INTO `{table_name}` (name, code) VALUES ")
        for record in data:
            sql = f"(\"{record['name']}\", \"{record['code']}\"),"
            f.write(sql)
        f.seek(f.tell() - 1)
        f.truncate()
        f.write(";\nUNLOCK TABLES;\n")

    sql_file = 'web-dev-project/NCLConly-2.sql'
    # Read in the existing SQL file and store each line in a list
    with open(sql_file, 'r', encoding="utf-8") as f:
        content = f.readlines()

    with open('output2.sql', 'r', encoding="utf-8") as f:
        new_sql = f.read().strip()

    line_to_replace = None
    for i, line in enumerate(content):
        if line.startswith(f"INSERT INTO `{table_name}` "):
            line_to_replace = i
            break

    if line_to_replace is not None:
        content[line_to_replace] = new_sql

    with open(sql_file, 'w', encoding="utf-8") as f:
        f.writelines(content)

# insert_course('courses_course', 'z_course_course.json')
# insert('courses_course_student', 'merged_data.json')