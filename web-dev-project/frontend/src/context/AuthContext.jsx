import axios from "axios";
import jwtDecode from "jwt-decode";
import * as React from "react";
import { createContext, useCallback, useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";

const AuthContext = createContext();

export default AuthContext;

export const AuthProvider = ({ children }) => {
  const storedAuthTokens = localStorage.getItem("authTokens");

  const [authTokens, setAuthTokens] = useState(() => {
    if (storedAuthTokens) {
      JSON.parse(storedAuthTokens);
    }
  });
  const [user, setUser] = useState(() => {
    if (storedAuthTokens) {
      jwtDecode(storedAuthTokens);
    }
  });

  const [loading, setLoading] = useState(true);

  const navigate = useNavigate();

  const loginUser = (e) => {
    e.preventDefault();
    axios
      .post("/api/users/token/", {
        enrollment_number: e.target.enrollment_number.value,
        password: e.target.password.value,
      })
      .then((res) => {
        setAuthTokens(res.data);
        setUser(jwtDecode(res.data.access));
        localStorage.setItem("authTokens", JSON.stringify(res.data));
        navigate("/");
      })
      .catch((err) => {
        alert(err);
      });
  };

  const logoutUser = useCallback(() => {
    setAuthTokens(null);
    setUser(null);
    localStorage.removeItem("authTokens");
    navigate("/login");
  }, [navigate]);

  const contextData = {
    authTokens,
    user,
    loginUser,
    logoutUser,
  };

  const updateToken = useCallback(() => {
    axios
      .post("/api/users/token/refresh/", {
        refresh: authTokens?.refresh,
      })
      .then((res) => {
        setAuthTokens(res.data);
        setUser(jwtDecode(res.data.access));
        localStorage.setItem("authTokens", JSON.stringify(res.data));
      })
      .catch((err) => {
        logoutUser();
      });

    if (loading) {
      setLoading(false);
    }
  }, [authTokens, loading, logoutUser]);

  useEffect(() => {
    if (loading) {
      updateToken();
    }

    let fourMinutes = 1000 * 60 * 4;

    let interval = setInterval(() => {
      if (authTokens) {
        updateToken();
      }
    }, fourMinutes);

    return () => clearInterval(interval);
  }, [authTokens, loading, updateToken]);

  return (
    <AuthContext.Provider value={contextData}>
      {loading ? null : children}
    </AuthContext.Provider>
  );
};
