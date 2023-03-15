import axios from "axios";
import * as React from "react";
import { useContext, useState } from "react";
import { useNavigate } from "react-router-dom";

// import Layout from "../components/Layout";
import AuthContext from "../context/AuthContext";

const CreatePost = (props) => {
  const [title, setTitle] = useState("");
  const [text, setText] = useState("");

  const navigate = useNavigate();

  const { user } = useContext(AuthContext);

  const addPost = (e) => {
    e.preventDefault();
    axios
      .post(`/api/forum/`, {
        title,
        text,
        user: user.user_id,
      })
      .then((res) => {
        navigate("/forum");
      })
      .catch((err) => alert(err));
  };

  return (
    <div className="bg-white rounded p-5">
      <form onSubmit={addPost}>
        <div className="mb-4">
          <label htmlFor="title" className="hidden">
            Title
          </label>
          <input
            type="text"
            id="title"
            placeholder="Tiêu đề"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            className="w-full"
          />
        </div>
        <div className="mb-6">
          <label htmlFor="text" className="hidden">
            Text (optional)
          </label>
          <textarea
            id="text"
            rows="3"
            placeholder="Mô tả (tùy chọn)"
            value={text}
            onChange={(e) => setText(e.target.value)}
            className="w-full"
          />
        </div>
        <div className="flex justify-end" style={{ gap: 16 }}>
          <input
            onClick={(e) => {
              e.preventDefault();
              props?.setOpen(false);
            }}
            type="submit"
            value="Huỷ"
            className="bg-cyan-800 text-white p-2 rounded cursor-pointer"
          />
          <input
            type="submit"
            value="Đăng"
            className="bg-cyan-800 text-white p-2 rounded cursor-pointer"
          />
        </div>
      </form>
    </div>
  );
};

export default CreatePost;
