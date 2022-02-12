import axios from "axios";
import {
  USER_LOADED,
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  LOADER_FAIL,
  LOGOUT,
} from "./types";

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

  try {
    const res = await axios.post(
      "http://localhost:1337/api/auth/local",
      body,
      config
    );

    dispatch({
      type: LOGIN_SUCCESS,
      payload: res.data,
    });
  } catch (err) {
    dispatch({
      type: LOGIN_FAIL,
    });
  }
};

// Logout
export const logout = () => ({ type: LOGOUT });
