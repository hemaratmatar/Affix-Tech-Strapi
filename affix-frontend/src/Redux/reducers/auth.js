import {
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  USER_LOADED,
  LOGOUT,
} from "../action/types";

const initialState = {
  token: localStorage.getItem("token"),
  isAuthenticated: false,
  loading: false,
  user: null,
};

export default function auth(state = initialState, action) {
  const { type, payload } = action;

  switch (type) {
    case USER_LOADED:
      // console.log(payload);
      var b = JSON.stringify(payload);
      var c = b.substring(1, b.length - 1);
      return {
        ...state,
        isAuthenticated: true,
        loading: false,
        user: JSON.parse(c),
      };
    case LOGIN_SUCCESS:
      localStorage.setItem("token", payload.jwt);
      return {
        ...state,
        ...payload,
        isAuthenticated: true,
        loading: false,
      };
    case LOGIN_FAIL:
    case LOGOUT:
      localStorage.removeItem("token",null);
      return {
        ...state,
        token: null,
        isAuthenticated: false,
        loading: false,
        user: null,
      };
    default:
      return state;
  }
}
