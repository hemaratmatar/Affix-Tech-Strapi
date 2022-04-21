import api from "../utils/api"
import { loadUser } from "./auth"
import { 
    editProfile, 
    editProfile_error, 
    Profile_loaded, 
    Profile_load_error,
    uploadImage_complete,
    uploadImage_error,
 } from "./types"





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


export const updateProfile = (Profiles, id) => async (dispatch) => {
    try {
// console.log(Profiles);
// console.log(id);
        const res = await api.put(`/profiles/${id}`, Profiles);

        dispatch({
            type: editProfile,
            payload: res.data.data
        });
        // await loadUser();
    } catch (err) {
        dispatch({
            type: editProfile_error,
            payload: { msg: err.response.statusText, status: err.response.status }
        });
    }
}

export const uploadImage = (formData) => async (dispatch) => {
    try {
        const config = {
            "content-type": "multipart/form-data"
        }
        const res = await api.post('/upload', formData, config);
        const data =res.data.reduce(function(datas, cur, data) {
            datas = cur;
            return datas;
          }, {});
        dispatch({
            type: uploadImage_complete,
            payload: data
        });
        
    } catch (err) {
        dispatch({
            type: uploadImage_error,
            payload: { msg: err.response.statusText, status: err.response.status }
        });
    }
}
