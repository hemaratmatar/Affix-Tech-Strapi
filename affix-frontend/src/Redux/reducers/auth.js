import {
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  USER_LOADED,
  LOGOUT,
  SIGNUP_SUCCESS,
  SIGNUP_FAIL,
  LOADER_FAIL
} from "../action/types";

const initialState = {
  token: localStorage.getItem('token'),
  isAuthenticated: null,
  loading: true,
  user: null,
  error:{}
};

export default function auth(state = initialState, action) {
  const { type, payload } = action;

  switch (type) {
    //User Loaded
    case USER_LOADED:
      // console.log(payload);
      // var b = JSON.stringify(payload);
      // var c = b.substring(1, b.length - 1);
      return {
        ...state,
        isAuthenticated: true,
        loading: false,
        // user: JSON.parse(c),
        user:payload
      };
    case LOADER_FAIL:
      return {
        ...state,
        loading: false,
        error:payload
      };
    
    case LOGIN_SUCCESS:
      localStorage.setItem("token", payload.jwt);
      return {
        ...state,
        ...payload,
        token:payload.jwt,
        isAuthenticated: true,
        loading: false,
      };
    case LOGIN_FAIL:
      return {
        ...state,
        loading: false,
        error:payload
      };
      
    case SIGNUP_SUCCESS:
      localStorage.setItem("token", payload.jwt);
      return {
        ...state,
        ...payload,
        token:payload.jwt,
        isAuthenticated: true,
        loading: false,
      };
    case SIGNUP_FAIL:
      return {
        ...state,
        loading: false,
        error:payload
      };
    case LOGOUT:
      localStorage.removeItem("token",null);
      return {
        ...state,
        token: null,
        isAuthenticated: false,
        loading: false,
        user: null,
        jwt:null
      };
    default:
      return state;
  }
}
