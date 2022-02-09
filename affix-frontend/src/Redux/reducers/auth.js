/* eslint-disable no-duplicate-case */
/* eslint-disable no-fallthrough */
/* eslint-disable import/no-anonymous-default-export */
import {
    USER_LOADED,
    USER_LOADFAIL,
    CLEAR_USER,
    LOGIN_SUCCESS,
    LOGIN_FAIL,
    REGISTER_SUCCESS,
    REGISTER_FAIL,
    LOGOUT,
  } from "../action/types";
  
  const initialState = {
    isAuthenticated: false,
    loading: false,
    status: null,
  };
  
  export default function (state = initialState, action) {
    const { type, payload } = action;
    switch (type) {
      
      case USER_LOADED:
          return {
          ...state,
          isAuthenticated: true,
          loading: false,
          ...payload
        };
      case USER_LOADFAIL:      
      localStorage.removeItem("success",null);
      return {
        ...state,
        isAuthenticated: false,
        loading: false,
        ...payload
      };
  
      case CLEAR_USER:
        return {
          ...state,
          isAuthenticated: false,
          loading: false
        };
      case LOGIN_SUCCESS:
        localStorage.setItem("success", payload.success);
        return {
          ...state,
          isAuthenticated: true,
          loading: false,
          ...payload
        };
      case LOGIN_FAIL:
        return {
          ...state,
          isAuthenticated:false,
          loading:false,
          ...payload
        }
  
      case REGISTER_SUCCESS:
        return {
          ...state,
          isAuthenticated: true,
          loading: false,
          ...payload
        };
  
      case REGISTER_FAIL:
  
      case LOGOUT:
        localStorage.removeItem("success",null);
        return {
          ...state,
          isAuthenticated: false,
          loading: false,
          ...payload
        };
      default:
        return state;
    }
  }
  