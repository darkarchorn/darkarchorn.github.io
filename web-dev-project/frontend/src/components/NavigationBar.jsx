import React from "react";
import { IoIosArrowForward } from "react-icons/io";
import { Link } from "react-router-dom";
const NavigationBar = (props) => {
  // const arr= [{text: "Trang chủ", link: "/"}, {text: "Nhà của tôi", link: "/home"}]
  return (
    <div
      className={"fjskdjskljksaslsaj"}
      style={{
        display: "flex",
        alignItems: "center",
        padding: "10px 40px 0 40px",
      }}
    >
      {props?.arr.map((item, key) => (
        <Link key={key} to={item.link}>
          <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
            {item.text}
            {parseInt(key) + 1 < props?.arr.length && <IoIosArrowForward />}
          </div>
        </Link>
      ))}
    </div>
  );
};

export default NavigationBar;
