import { useContext, useEffect, useState } from "react";
import { Link } from "react-router-dom";
import AuthContext from "../context/AuthContext";
import { capitalize } from "../utils/helpers";

import axios from "axios";
import * as React from "react";
import { BiBell, BiUserCircle } from "react-icons/bi";
import Notifications from "./Notifications";
import OutsideClickHandler from "react-outside-click-handler";

const Navbar = () => {
  const { user, logoutUser } = useContext(AuthContext);
  const [notifications, setNotifications] = useState([]);
  const [unreadNotifications, setUnreadNotifications] = useState(0);
  const [notificationsIsOpen, setNotificationsIsOpen] = useState(false);
  const [open, setOpen] = useState(false);

  useEffect(() => {
    axios
      .get("/api/notifications")
      .then((res) => {
        let notifs = res.data;
        let unreadNotifs = 0;
        setNotifications(notifs);

        notifs.forEach((notif) => {
          if (!notif.isSeen) {
            unreadNotifs += 1;
          }
        });

        setUnreadNotifications(unreadNotifs);
      })
      .catch((err) => alert(err));
  }, []);

  return (
    <>
      <div className="text-slate-200 px-8 sm:px-20 py-6">
        <div className="flex justify-between items-center">
          <div className="flex items-center gap-x-10">
            <h1 className="text-3xl font-semibold mr-10 flex items-center gap-x-8">
              <img
                src="https://upload.wikimedia.org/wikipedia/vi/thumb/b/bf/Logo_HUET.svg/640px-Logo_HUET.svg.png"
                alt=""
                style={{ width: 80, height: 80, objectFit: "contain" }}
              />
              <Link to="/" style={{ color: "#004580", fontSize: 48 }}>
                LMS
              </Link>
            </h1>
          </div>
          <div className="flex gap-x-6" style={{ alignItems: "center" }}>
            {user ? (
              <>
                <span className="text-2xl relative">
                  <button
                    className="flex items-center relative"
                    onClick={() => setNotificationsIsOpen(true)}
                  >
                    <div>
                      <BiBell color="#000" />
                    </div>
                    <span className="absolute top-[-9px] right-[-9px] grid place-items-center text-xs bg-rose-500 text-white rounded-full w-5 h-5">
                      {unreadNotifications}
                    </span>
                  </button>
                  {notificationsIsOpen && (
                    <Notifications
                      notifications={notifications}
                      setIsOpen={setNotificationsIsOpen}
                    />
                  )}
                </span>
                <span className="flex gap-x-2">
                  <div
                    to={`/${user.enrollment_number}`}
                    className="flex items-center gap-x-2 cursor-pointer hover:underline"
                    style={{ position: "relative" }}
                  >
                    <BiUserCircle color="#000" className="text-2xl" />
                    <span
                      className={"jskldjdlkjkasas"}
                      style={{ color: " #000" }}
                      onClick={() => setOpen((prev) => !prev)}
                    >
                      {capitalize(user.first_name)}
                    </span>
                    {open === true && (
                      <OutsideClickHandler
                        onOutsideClick={() => setOpen(() => false)}
                      >
                        <div
                          className={"fskldjskldjlksaw"}
                          style={{
                            position: "absolute",
                            right: 0,
                            top: "100%",
                            width: 250,
                            background: "#fff",
                            padding: 10,
                            color: "#000",
                            borderRadius: 5,
                          }}
                        >
                          <div onClick={logoutUser}>Đăng xuất</div>
                        </div>
                      </OutsideClickHandler>
                    )}
                  </div>
                  {
                    <div
                      className={"fdjfdjsdlkjdklsasa"}
                      style={{
                        width: 80,
                        height: 80,
                        borderRadius: "50%",
                        background: "#d9d9d9",
                        display: "flex",
                        justifyContent: " center",
                        alignItems: "center ",
                        fontSize: 30,
                      }}
                    >
                      {capitalize(user?.first_name?.[0])}
                    </div>
                  }
                  {/* <span>|</span>
                  <button className="hover:underline" onClick={logoutUser}>
                    Logout
                  </button> */}
                </span>
              </>
            ) : (
              <Link to="/login" style={{ color: "#000" }}>
                Đăng nhập
              </Link>
            )}
          </div>
        </div>
      </div>
      <div
        className={"kjsdjkldjkslakjsdsa"}
        style={{
          width: " 100%",
          height: 60,
          display: "flex",
          alignItems: "center",
          background: "#555",
          color: "#fff",
          padding: "0 60px",
        }}
      >
        {user && (
          <>
            <Link
              to={`/${user.enrollment_number}`}
              className="hover:underline"
              style={{ padding: "10px 20px" }}
            >
              Hồ sơ
            </Link>
            <Link
              to="/courses"
              className="hover:underline"
              style={{ padding: "10px 20px" }}
            >
              Khóa học của tôi
            </Link>
            <Link
              to="/search"
              className="hover:underline"
              style={{ padding: "10px 20px" }}
            >
              Tìm kiếm
            </Link>
          </>
        )}
        <Link
          to="/forum"
          className="hover:underline"
          style={{ padding: "10px 20px" }}
        >
          Diễn đàn
        </Link>
      </div>
    </>
  );
};

export default Navbar;
