import * as React from "react";
import { useContext } from "react";
import { NavLink } from "react-router-dom";
import AuthContext from "../context/AuthContext";
import Announcements from "./Announcements";
import TimeTableList from "./TimeTableList";
import { IoMdArrowDropdown } from "react-icons/io";
import { useState } from "react";
import { useEffect } from "react";
import axios from "axios";
import { RxDotFilled } from "react-icons/rx";
import { memo } from "react";

const Sidebar = () => {
  const { authTokens, user } = useContext(AuthContext);
  const [listCourses, setListCourses] = useState([]);
  useEffect(() => {
    let a = [];
    axios
      .get("/api/courses/" + user.user_id, {
        headers: {
          "Content-Type": "application/json",
          Authorization: "Bearer " + String(authTokens.access),
        },
      })
      .then((res) => {
        setListCourses(res.data);
        a = res.data;
      })
      .catch((err) => console.error(err));
    return () => setListCourses(a);
  }, [authTokens.access, user.user_id]);
  return (
    <div className="flex flex-col gap-y-10">
      <div>
        <h1 className="text-xl font-semibold mb-3">Điều hướng</h1>
        <div className="bg-white rounded-md px-4 py-2">
          <NavLink
            className={({ isActive }) =>
              isActive ? "ddksjiekjaeges" : "jfuhduheahsajkdas"
            }
            to={"/"}
          >
            Trang chủ
          </NavLink>
          <div className="sdhjdhjdhsas" style={{ marginLeft: 12 }}>
            <div
              className={"fzjdhsjdjkdljdas"}
              style={{ display: "flex", alignItems: "center" }}
            >
              <NavLink
                className={({ isActive }) =>
                  isActive ? "ddksjiekjaeges" : "jfuhduheahsajkdas"
                }
                to={"/" + user?.enrollment_number}
              >
                Hồ sơ
              </NavLink>
            </div>
            <div className={"fzjdhsjdjkdljdas"}>
              <div
                className={"jhskldhsdhjas"}
                style={{ display: "flex", alignItems: "center" }}
              >
                <IoMdArrowDropdown />{" "}
                <NavLink
                  className={({ isActive }) =>
                    isActive ? "ddksjiekjaeges" : "jfuhduheahsajkdas"
                  }
                  to={"/courses"}
                >
                  Khóa học của tôi
                </NavLink>
              </div>
              <div className={"djkdjhlddjkljdsasd"} style={{ marginLeft: 12 }}>
                {listCourses?.map((item, key) => (
                  <div
                    key={key}
                    className={"sjkdkjgkjdkljaska"}
                    style={{ display: "flex", alignItems: "center" }}
                  >
                    <RxDotFilled />
                    <NavLink
                      className={({ isActive }) =>
                        isActive ? "ddksjiekjaeges" : "jfuhduheahsajkdas"
                      }
                      to={"/course/" + item?.code}
                    >
                      {item?.name}
                    </NavLink>
                  </div>
                ))}
              </div>
            </div>
            <div
              className={"fzjdhsjdjkdljdas"}
              style={{ display: "flex", alignItems: "center" }}
            >
              <NavLink
                className={({ isActive }) =>
                  isActive ? "ddksjiekjaeges" : "jfuhduheahsajkdas"
                }
                to={"/search"}
              >
                Tìm kiếm
              </NavLink>
            </div>
            <div
              className={"fzjdhsjdjkdljdas"}
              style={{ display: "flex", alignItems: "center" }}
            >
              <NavLink
                className={({ isActive }) =>
                  isActive ? "ddksjiekjaeges" : "jfuhduheahsajkdas"
                }
                to={"/forum"}
              >
                Diễn đàn
              </NavLink>
            </div>
          </div>
        </div>
      </div>
      <TimeTableList />
      <Announcements />
    </div>
  );
};

export default memo(Sidebar);
