import * as React from "react";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import Navbar from "./components/Navbar";
import { AuthProvider } from "./context/AuthContext";
import NotFoundPage from "./pages/404";
import CourseDetailPage from "./pages/CourseDetailPage";
import CreatePost from "./pages/CreatePost";
import Forum from "./pages/Forum";
import HomePage from "./pages/HomePage";
import LoginPage from "./pages/LoginPage";
import Post from "./pages/Post";
import Search from "./pages/Search";
import UserProfile from "./pages/UserProfile";

import PrivateRoute from "./utils/PrivateRoute";

function App() {
  return (
    <div className="App min-h-screen bg-[#F0F1F4] text-slate-600 pb-20">
      <BrowserRouter>
        <AuthProvider>
          <Navbar />
          <div className="max-w-7xl mx-auto">
            <Routes>
              <Route element={<PrivateRoute />}>
                <Route path="/" element={<HomePage />} />
                <Route path={"/courses"} element={<HomePage />} />
                <Route path={"/search"} element={<Search />} />
                <Route path="/forum" element={<Forum />} />
                <Route path="/forum/:id" element={<Post />} />
                <Route path="/forum/create" element={<CreatePost />} />
                <Route path="/:user" element={<UserProfile />} />
                <Route path="/course/:id" element={<CourseDetailPage />} />
              </Route>
              <Route path="/login" element={<LoginPage />} />

              <Route path="*" element={<NotFoundPage />} />
            </Routes>
          </div>
        </AuthProvider>
      </BrowserRouter>
    </div>
  );
}

export default App;
