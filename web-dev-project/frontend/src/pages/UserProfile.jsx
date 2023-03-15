import axios from "axios";
import * as React from "react";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Layout from "../components/Layout";
import NavigationBar from "../components/NavigationBar";

const UserProfile = () => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [courses, setCourses] = useState([]);
  let params = useParams();

  useEffect(() => {
    axios
      .get(`/api/users/${params.user}`)
      .then((res) => {
        setUser(res.data);
        setLoading(false);
      })
      .catch((err) => alert(err));
  }, [params]);

  useEffect(() => {
    axios
      .get(`/api/courses/${user?.user?.id}`)
      .then((res) => {
        setCourses(res.data);
      })
      .catch((err) => console.error(err));
  }, [user?.user?.id]);

  return (
    <>
      <NavigationBar
        arr={[
          { link: "/", text: "Trang chủ" },
          { link: window.location.pathname, text: "Thông tin người dùng" },
        ]}
      />
      <Layout title="Chi tiết người dùng">
        {loading ? null : (
          <div className="flex flex-col gap-y-5">
            <div className="bg-white p-5 rounded-md">
              <h1 className="mb-5 text-lg font-semibold">{`${user.user.first_name} ${user.user.last_name}`}</h1>
              <span>{user.batch.name}</span>
            </div>
            <div className="bg-white p-5 rounded-md">
              <h1 className="mb-5 text-lg font-semibold">Khóa học của bạn</h1>
              <div>
                <table className="text-left w-full">
                  <tr>
                    <th>Mã môn</th>
                    <th>Tên môn</th>
                  </tr>
                  {courses.map((course, key) => (
                    <tr key={key}>
                      <td>{course.code}</td>
                      <td>{course.name}</td>
                    </tr>
                  ))}
                </table>
              </div>
            </div>
          </div>
        )}
      </Layout>
    </>
  );
};

export default UserProfile;
