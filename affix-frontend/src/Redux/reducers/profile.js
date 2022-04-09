import { Profile_loaded, Profile_load_error } from "../action/types";

const initialState = {
  profiles: [],
  profile: null,
  loading: true,
  error: {},
};

function profileReducer(state = initialState, action) {
  const { type, payload } = action;
  switch (type) {
    case Profile_loaded:
      return {
        ...state,
        profiles: payload,
        loading: false,
      };
    case Profile_load_error:
      return {
        ...state,
        error: payload,
        loading: false,
      };

    default:
      return state;
  }
}
export default profileReducer;
