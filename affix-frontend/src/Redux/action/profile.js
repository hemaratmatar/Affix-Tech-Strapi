import api from "../utils/api"
import { Profile_loaded, Profile_load_error } from "./types"





export const loadProfile =() => async (dispatch) =>{
try {
    const res = await api.get('/')
    dispatch({
        type: Profile_loaded,
        payload:res.data
    })
} catch (err) {
    dispatch({
        type: Profile_load_error,
        payload:{msg:err.response.statusText,status: err.response.status}
    })
}
}