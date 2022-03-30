import api from "../utils/api";
import { add_comment, add_comment_error, show_comment, show_comment_error } from "./types";



export const addComment = (comment) => async (dispatch) =>{
    try {
        const res = await api.post('/posts',comment);

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