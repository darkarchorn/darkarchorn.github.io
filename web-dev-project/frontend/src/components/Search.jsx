import axios from "axios";
import * as React from "react";
import { useContext, useEffect, useState } from "react";
import { Link } from "react-router-dom";
import AuthContext from "../context/AuthContext";
import Fuse from "fuse.js";
import OutsideClickHandler from "react-outside-click-handler";

const SearchComponent = () => {
  const [courses, setCourses] = useState([]);
  const { authTokens, user } = useContext(AuthContext);
  const [searchResultCourses, setSearchResultCourses] = useState([]);
  const [open, setOpen] = useState(false);
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
  const options = {
    keys: ["code", "name"],
  };
  const fuse = new Fuse(courses, options);
  const searchCourses = (e) => {
    setSearchResultCourses(fuse.search(e.target.value));
  };
  const sortAtoZ = () => {
    setSearchResultCourses(
      searchResultCourses.sort((a, b) => a.item.name.localeCompare(b.item.name))
    );
    setOpen(false);
  };
  const sortZtoA = () => {
    setSearchResultCourses(
      searchResultCourses.sort(
        (a, b) => -1 * a.item.name.localeCompare(b.item.name)
      )
    );
    setOpen(false);
  };
  return (
    <div>
      <h1 className="text-xl font-semibold mb-10">Tìm kiếm</h1>
      <div
        className="fjfuiasjassfesaa"
        style={{
          width: "100%",
          display: "flex",
          justifyContent: "space-between",
          alignItems: "center",
        }}
      >
        <div
          className={"jsdhjrehuwehajkssja"}
          style={{
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          <input
            onChange={searchCourses}
            type="text"
            style={{
              width: 400,
              height: 40,
              padding: "0 10px",
              borderRadius: 5,
            }}
            placeholder={"Tìm kiếm"}
          />
        </div>
        <div
          className={"fjdfjslkdjrksjheklas"}
          style={{
            padding: 10,
            background: "#2e89ff",
            color: "#fff",
            position: "relative",
          }}
        >
          <div
            onClick={() => setOpen((prev) => !prev)}
            className={"fajidjalkdjrklass"}
            style={{ cursor: "pointer" }}
          >
            Sắp xếp theo
          </div>
          {open === true && (
            <OutsideClickHandler onOutsideClick={() => setOpen(false)}>
              <div
                className={"sjdklsdjklfjkldas"}
                style={{
                  position: "absolute",
                  top: "100%",
                  right: 0,
                  background: "#fff",
                  color: "#000",
                  zIndex: 99,
                }}
              >
                <div
                  onClick={sortAtoZ}
                  className={"fjsdjsakdjkasss"}
                  style={{
                    whiteSpace: "nowrap",
                    padding: 10,
                    cursor: "pointer",
                  }}
                >
                  Sắp xếp theo thứ tự từ A-Z
                </div>
                <div
                  onClick={sortZtoA}
                  className={"sdkjdjskdjkdasa"}
                  style={{
                    whiteSpace: "nowrap",
                    padding: 10,
                    cursor: "pointer",
                  }}
                >
                  Sắp xếp theo thứ tự từ Z-A
                </div>
              </div>
            </OutsideClickHandler>
          )}
        </div>
      </div>
      <br />
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-5">
        {searchResultCourses.map((course, key) => (
          <Link key={key} to={`/course/${course.item.code}`}>
            <div
              key={course.item.code}
              className="bg-white p-4 rounded-md hover:shadow-md"
            >
              <div className="text-sm text-slate-400">{course.item.code}</div>
              <div className="font-semibold">{course.item.name}</div>
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
};

export default SearchComponent;
