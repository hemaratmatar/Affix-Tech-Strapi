import api from "../utils/api";
import { add_comment, add_comment_error, delete_comment, delete_comment_error, edit_comment, edit_comment_error, show_comment, show_comment_error } from "./types";



export const addComment = (commentpost) => async (dispatch) =>{
    try {
        const res = await api.post('/comments',commentpost);

        dispatch({
            type: add_comment,
            payload:res.data
        });
        

    } catch (err) {
        dispatch({
            type: add_comment_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}

export const showAllcomment = (postid) => async (dispatch) => {
    try {
        const res = await api.get(`/posts/${postid}?fields[0]=id&populate[0]=comments`);
        dispatch({
            type: show_comment,
            payload:res.data.data
        });
    } catch (err) {
        dispatch({
            type: show_comment_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}


export const EditComment = (commentpost,id) => async (dispatch) =>{
    try {
        const res = await api.put(`/comments/${id}`,commentpost);
        // Refresh Page
        // window.location.reload(false);

        dispatch({
            type: edit_comment,
            payload:res.data
        });
        

    } catch (err) {
        dispatch({
            type: edit_comment_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}




export const DeleteComment = (id) => async (dispatch) =>{
    try {
        const res = await api.delete(`/comments/${id}`);
        // Refresh Page
        // window.location.reload(false);

        dispatch({
            type: delete_comment,
            payload:res.data
        });
        

    } catch (err) {
        dispatch({
            type: delete_comment_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}