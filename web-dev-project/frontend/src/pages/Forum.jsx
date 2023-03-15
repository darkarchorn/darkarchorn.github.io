import axios from "axios";
import * as React from "react";
import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import Layout from "../components/Layout";
import NavigationBar from "../components/NavigationBar";
import PostListItem from "../components/PostListItem";
import CreatePost from "./CreatePost";

const Forum = () => {
  const [posts, setPosts] = useState([]);
  const navigate = useNavigate();

  const getAllPosts = () => {
    axios.get("/api/forum").then((res) => setPosts(res.data));
  };
  const [openCreatePost, setOpenCreatePost] = useState(false);
  useEffect(() => {
    getAllPosts();
  }, []);

  return (
    <>
      <NavigationBar
        arr={[
          { link: "/", text: "Home" },
          { link: "/forum", text: "Diễn đàn" },
        ]}
      />
      <Layout title="Diễn đàn">
        <div className="flex flex-col gap-y-10">
          {openCreatePost === false && (
            <div className="bg-white rounded p-5">
              <input
                type="text"
                placeholder="Bạn đang nghĩ gì?"
                className="w-full rounded"
                onClick={() => setOpenCreatePost(true)}
              />
            </div>
          )}
          {openCreatePost === true && (
            <CreatePost setOpen={setOpenCreatePost} />
          )}
          {posts.map((post) => (
            <PostListItem key={post.id} post={post} />
          ))}
        </div>
      </Layout>
    </>
  );
};

export default Forum;
