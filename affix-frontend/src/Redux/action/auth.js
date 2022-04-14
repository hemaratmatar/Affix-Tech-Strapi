import api from "../utils/api";
import { setAlert } from "./alert";
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
    const res = await api.get("/users/me");
    dispatch({
      type: USER_LOADED,
      payload: res.data,
    });
  } catch (err) {
    dispatch({
      type: LOADER_FAIL,
      payload: { msg: err.response.statusText, status: err.response.status }
    });
  }
};

export const login = (identifier, password) => async (dispatch) => {
  // const config = {
  //   headers: {
  //     "Content-Type": "application/json",
  //   },
  // };

  const body = JSON.stringify({ identifier, password });
  // const body = { identifier, password };

  // await axios
  //   .post("http://localhost:1337/api/auth/local", body, config)
  //   .then((res) => {
  //     dispatch({ type: LOGIN_SUCCESS, payload: res.data });
  //     dispatch(loadUser());
  //   })
  //   .catch((err) => {
  //     const errors = err.response.data.error;
  //     console.log(errors);
  //     if (errors) {
  //       dispatch(setAlert(errors.message,"danger"))
  //     }
  //     dispatch({ type: LOGIN_FAIL });
  //   });
  try {
    const res = await api.post(
      "/auth/local",
      body,
      // config
    );
    dispatch({
      type: LOGIN_SUCCESS,
      payload: res.data,
    });
    dispatch(loadUser());
  } catch (err) {
    // console.log(err.response.status);
    const errors = err.response.data.error;


    if (err.response.status === 500) {
      // errors.forEach((error) => dispatch(setAlert(error.message, "danger")));
      dispatch(setAlert(null,"Email or Password is Worng"));
    }else {
      dispatch(setAlert("Status Code :"+err.response.status,err.message,"danger"))
    }
    dispatch({
      type: LOGIN_FAIL,
    });
  }
};

export const signup = (profileData,email, password, role) => async (dispatch) => {
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



  try {
    const resprofile = await api.post("/profiles",
    profileData,
    config);
    console.log(resprofile.data.data.id);
    const body = JSON.stringify({
      email,
      password,
      // confirmed,
      // provider,
      role,
      profile:resprofile.data.data.id
      // image,
    });
    console.log(body);
    const res = await api.post(
      "/auth/local/register",
      body,
      config
    );
    console.log(res.data);

    dispatch({
      type: SIGNUP_SUCCESS,
      payload: res.data,
    });
    // dispatch(loadUser());
  } catch (err) {
    // console.log(err.response.status);
    const errors = err.response.data.error;
    if (err.response.status === 400) {
      // errors.forEach((error) => dispatch(setAlert(error.message, "danger")));
      dispatch(setAlert(null,errors.message,"danger"));
    }else {
      dispatch(setAlert("Status Code :"+err.response.status,err.message,"danger"))
    }
    dispatch({
      type: SIGNUP_FAIL,
    });
  }
};

// Logout
export const logout = () => ({ type: LOGOUT });
