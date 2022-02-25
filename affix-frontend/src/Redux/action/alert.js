// import uuid from "uuid"
// import { SET_ALERT , REMOVE_ALERT} from './types';

// export const setAlert = (message,alertType) => dispatch =>{
//     const id = uuid.v4();
//     dispatch({
//         type:SET_ALERT,
//         payload:{message,alertType,id}
//     })
// }

import { v4 as uuidv4 } from 'uuid';
import { SET_ALERT, REMOVE_ALERT } from './types';

export const setAlert = (status,message, alertType, timeout = 1000) => dispatch => {
  const id = uuidv4();
  // console.log(message,alertType);
  dispatch({
    type: SET_ALERT,
    payload: { status,message, alertType, id }
  });

  setTimeout(() => dispatch({ type: REMOVE_ALERT, payload: id }), timeout);
};