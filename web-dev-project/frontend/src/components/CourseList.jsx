import axios from "axios";
import * as React from "react";
import { useContext, useEffect, useState } from "react";
import { Link } from "react-router-dom";
import AuthContext from "../context/AuthContext";
import { image1, image2, image3, image4, image5 } from "../ImageCourse";

const CourseList = () => {
  const [courses, setCourses] = useState([]);

  const { authTokens, user } = useContext(AuthContext);

  useEffect(() => {
    axios
      .get("/api/courses/" + user.user_id, {
        headers: {
          "Content-Type": "application/json",
          Authorization: "Bearer " + String(authTokens.access),
        },
      })
      .then((res) => {
        setCourses(res.data);
      })
      .catch((err) => console.error(err));
  }, [authTokens.access, user.user_id]);

  return (
    <div>
      <h1 className="text-xl font-semibold mb-10">Khóa học của bạn</h1>
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-5">
        {courses.map((course, key) => (
          <Link to={`/course/${course.code}`}>
            <div
              key={course.code}
              className="bg-white p-4 rounded-md hover:shadow-md"
            >
              <div
                classname="fnjksdhjkdhjkasassa"
                style={{ width: "100%", height: 175 }}
              >
                {(parseInt(key) + 1) % 5 === 1 && (
                  <img
                    alt=""
                    src={image1}
                    style={{
                      width: "100%",
                      height: "100%",
                      objectFit: "cover",
                      borderRadius: 5,
                    }}
                  />
                )}
                {(parseInt(key) + 1) % 5 === 2 && (
                  <img
                    alt=""
                    src={image2}
                    style={{
                      width: "100%",
                      height: "100%",
                      objectFit: "cover",
                      borderRadius: 5,
                    }}
                  />
                )}
                {(parseInt(key) + 1) % 5 === 3 && (
                  <img
                    alt=""
                    src={image3}
                    style={{
                      width: "100%",
                      height: "100%",
                      objectFit: "cover",
                      borderRadius: 5,
                    }}
                  />
                )}
                {(parseInt(key) + 1) % 5 === 4 && (
                  <img
                    alt=""
                    src={image4}
                    style={{
                      width: "100%",
                      height: "100%",
                      objectFit: "cover",
                      borderRadius: 5,
                    }}
                  />
                )}
                {(parseInt(key) + 1) % 5 === 0 && (
                  <img
                    alt=""
                    src={image5}
                    style={{
                      width: "100%",
                      height: "100%",
                      objectFit: "cover",
                      borderRadius: 5,
                    }}
                  />
                )}
              </div>
              <div className="text-sm text-slate-400">{course.code}</div>
              <div className="font-semibold">{course.name}</div>
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
};

export default CourseList;
