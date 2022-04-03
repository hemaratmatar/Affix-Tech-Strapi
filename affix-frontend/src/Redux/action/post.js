import api from "../utils/api";
import { 
    post_error, 
    post_loaded, 
    post_load_error, 
    post_sucessfuly,
    uploadImage_complete,
    uploadImage_error,
    post_hl_loaded,
    post_hl_load_error,
    loadedPostbyid_error,
    loadedPostbyid,
    updatePost_error,
    updatePost_sucessfuly
} from "./types";


export const addPost = (formPost,history) => async (dispatch) =>{
    try {
        const res = await api.post('/posts',formPost);

        dispatch({
            type: post_sucessfuly,
            payload:res.data
        });
        
           // const history = createBrowserHistory();
    // history.push({
    //     pathname:"/",
       //  state:{Key : response.data.user }
//    });
    } catch (err) {
        dispatch({
            type: post_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}

export const loadedPostbyID = (id) => async (dispatch)=>{
    try {
        const res = await api.get(`/posts/${id}?populate[comments][populate][0]=users_permissions_user&filters[content_private][$eq]=false`);
        dispatch({
            type: loadedPostbyid,
            payload:res.data.data
        });
    } catch (err) {
        dispatch({
            type: loadedPostbyid_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}

export const hightlightPost =()=> async (dispatch)=>{
    try {
        const res = await api.get('/posts?populate[0]=users_permissions_user&filters[highlights][$eq]=true&filters[Catagory][$eq]=Post&filters[content_private][$eq]=false');

        dispatch({
            type: post_hl_loaded,
            payload:res.data.data
        });
    } catch (err) {
        dispatch({
            type: post_hl_load_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}

export const loadedPost = () => async (dispatch) =>{
    try {
        const res = await api.get('/posts?populate[0]=users_permissions_user&filters[Catagory][$eq]=Post&filters[content_private][$eq]=false');
 
        dispatch({
            type: post_loaded,
            payload:res.data.data
        });
    } catch (err) {
        dispatch({
            type: post_load_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}


export const updatePost = (formData,id) => async (dispatch)=>{
    try {
        const res = await api.put(`/posts/${id}`,formData);

        dispatch({
            type: updatePost_sucessfuly,
            payload:res.data.data
        });

    } catch (err) {
        dispatch({
            type: updatePost_error,
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