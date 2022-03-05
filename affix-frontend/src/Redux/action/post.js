import api from "../utils/api";
import { 
    post_error, 
    post_sucessfuly,
    uploadImage_complete,
    uploadImage_error
} from "./types";


export const addPost = (formPost) => async (dispatch) =>{
    try {
        const res = await api.post('/posts',formPost);

        dispatch({
            type: post_sucessfuly,
            payload:res.data
        });
    } catch (err) {
        dispatch({
            type: post_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }

}


export const uploadImage =(formData) => async (dispatch) =>{
    try {
        const config ={
            "content-type": "multipart/form-data"
        }
        const res = await api.post('/upload',formData,config);

        dispatch({
            type: uploadImage_complete,
            payload:res.data
        })
    } catch (err) {
        dispatch({
            type: uploadImage_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}