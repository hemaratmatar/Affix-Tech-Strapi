import {
    USER_LOADED,
    USER_LOADFAIL,
    CLEAR_USER,
    LOGIN_SUCCESS,
    LOGIN_FAIL,
    REGISTER_SUCCESS,
    REGISTER_FAIL,
    LOGINSIGNUP_CALLBACK_ERROR,
    LOGINSIGNUP_CALLBACK,
    LOGOUT,
  } from "../action/types";
  import axios from "axios";
import setAuth from "../utils/setAuth";
  
  export const loadUser = () => async (dispatch) => {

    if (localStorage.success) {
        setAuth(localStorage.success)
    }

      try {
          const res = await axios.get("http://localhost:8080/api/auth",{withCredentials:true});
          dispatch({
          type: USER_LOADED,
          payload: res.data,
          })
      } catch (err) {
          dispatch({
          type: USER_LOADFAIL,
          })
      }
  };
  
  export const login = (identifier,password) => async (dispatch) => {
      const config = {
          headers: {
            "Content-Type": "application/json"
          }
        };
      
        // const body = JSON.stringify({ username, password });
        const body = JSON.stringify({ identifier, password });
        try {
            // const res = await axios.post("http://localhost:8080/api/auth/login",body,config,{withCredentials:true});
            const res = await axios.post("http://localhost:1337/api/auth/local",body,config,{withCredentials:true});
            dispatch({
                type: LOGIN_SUCCESS,
                payload: res.data
            });
  
          //   dispatch(loadUser());
        } catch (err) {
          dispatch({
              type: LOGIN_FAIL
          });
        }
  }
  
//   export const loginsignupcallback =()  => async (dispatch) =>{
//   try {
//       const res = await axios.get("http://localhost:8080/api/auth/google/callback");
  
//       dispatch({
//           type: LOGINSIGNUP_CALLBACK,
//           payload: res.data
//       });
//   } catch (err) {
//       dispatch({
//           type: LOGINSIGNUP_CALLBACK_ERROR
//       });
//   }
//   }
  
  
  
  export const logout =()=> async (dispatch) =>{
      try {
          const res = await axios.get("http://localhost:8080/api/auth/logout");
  
          dispatch({
              type:LOGOUT
          })
  
      } catch (err) {
          dispatch({
              type:LOGOUT,
              payload: err
          })
      }
  }