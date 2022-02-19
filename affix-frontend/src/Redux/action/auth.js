import axios from "axios";
import {
  USER_LOADED,
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  LOADER_FAIL,
  LOGOUT,
  SIGNUP_SUCCESS,
  SIGNUP_FAIL,
} from "./types";
// Genarate User Pofile
// import gravatar from "gravatar";
// import normalize from "normalize-url";

export const loadUser = () => async (dispatch) => {
  try {
    const res = await axios.get("http://localhost:1337/api/users");
    dispatch({
      type: USER_LOADED,
      payload: res.data,
    });
  } catch (err) {
    dispatch({
      type: LOADER_FAIL,
    });
  }
};

export const login = (identifier, password) => async (dispatch) => {
  const config = {
    headers: {
      "Content-Type": "application/json",
    },
  };

  const body = JSON.stringify({ identifier, password });
  console.log(body);
  try {
    const res = await axios.post(
      "http://localhost:1337/api/auth/local",
      body,
      config
    );
      console.log(res);
    dispatch({
      type: LOGIN_SUCCESS,
      payload: res.data,
    });
    // dispatch(loadUser());
  } catch (err) {
    dispatch({
      type: LOGIN_FAIL,
    });
  }
};

export const signup = (username, email, password, role) => async (dispatch) => {
  const config = {
    headers: {
      "Content-Type": "application/json",
      // "Content-Length":"<calculated when request is sent>"
    },
  };
  // const image = gravatar.url(email, {
  //     s: "200",
  //     r: "pg",
  //     d: "mm",
  //   });
  // const ImageUrl = image;
  // const confirmed = true;
  // const provider = "local";

  const body = JSON.stringify({
    username,
    email,
    password, 
    // confirmed,
    // provider,
    role,
    // image,
  });

  try {
    const res = await axios.post(
      "http://localhost:1337/api/auth/local/register",
      body,
      config
    );
    dispatch({
      type: SIGNUP_SUCCESS,
      payload: res.data,
    });
    // dispatch(loadUser());
  } catch (err) {
    console.log(err);
    dispatch({
      type: SIGNUP_FAIL,
    });
  }
};

// Logout
export const logout = () => ({ type: LOGOUT });