import React from "react";
// import CourseList from '../components/CourseList'
import Layout from "../components/Layout";
import NavigationBar from "../components/NavigationBar";
import SearchComponent from "../components/Search";

const Search = () => {
  return (
    <>
      <NavigationBar
        arr={[
          { link: "/", text: "Trang chủ" },
          { link: "/search", text: "Tìm kiếm" },
        ]}
      />
      <Layout title="Tổng quan khóa học">
        <SearchComponent />
      </Layout>
    </>
  );
};

export default Search;
