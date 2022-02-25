// import { SET_ALERT , REMOVE_ALERT} from '../action/types'

// const initialState = [];

// export default function alert(state = initialState,action,payload){

//     switch (action.type) {
//         case SET_ALERT:
//             return [...state ,payload];
//         case REMOVE_ALERT:
//             return state.filter(alert => alert.id !== payload);
//         default:
//             break;
//     }
// }




   
import { SET_ALERT, REMOVE_ALERT } from '../action/types';

const initialState = [];

export default function alert(state = initialState, action) {
  const { type, payload } = action;

  switch (type) {
    case SET_ALERT:
      // console.log(payload);
      return [...state, payload];
    case REMOVE_ALERT:
      return state.filter((alert) => alert.id !== payload);
    default:
      return state;
  }
}

// export default alert;