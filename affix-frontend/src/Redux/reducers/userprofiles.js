import { 
  Profile_loaded, 
  Profile_load_error,
  uploadImage_complete,
  uploadImage_error,

} from "../action/types";

const initialState = {
  profiles: [],
  imagetext: null,
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
        // Update Image Function
        case uploadImage_complete:
            return {
                ...state,
                imagetext: payload,
                loading: false
            }
        case uploadImage_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
    default:
      return state;
  }
}
export default profileReducer;
