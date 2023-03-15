import * as React from "react";
import CourseList from "../components/CourseList";
import Layout from "../components/Layout";
import NavigationBar from "../components/NavigationBar";

const HomePage = () => {
  return (
    <>
      <NavigationBar
        arr={[
          { link: "/", text: "Trang chủ" },
          { link: "/courses", text: "Khóa học" },
        ]}
      />
      <Layout title="Tổng quan khóa học">
        <CourseList />
      </Layout>
    </>
  );
};

export default HomePage;
