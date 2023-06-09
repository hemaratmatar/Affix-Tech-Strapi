import api from "../utils/api";
import {
    post_error,
    post_loaded,
    post_load_error,
    post_sucessfuly,
    count_Post,
    count_Post_error,
    post_hl_loaded,
    post_hl_load_error,
    loadedPostbyid_error,
    loadedPostbyid,
    updatePost_error,
    updatePost_sucessfuly,
    post_remove,
    post_remove_error,
    loadedhl_Review,
    loadedhl_Review_error,
    loadedReview,
    loadedReview_error,
    home_highlight,
    home_highlight_error
} from "./types";


export const addPost = (formPost, history) => async (dispatch) => {
    try {
        const res = await api.post('/posts', formPost);

        dispatch({
            type: post_sucessfuly,
            payload: res.data
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

export const loadedPostbyID = (id) => async (dispatch) => {
    try {
        const res = await api.get(`/posts/${id}?populate=comments.users_permissions_user.profile&populate=users_permissions_user.profile&filters[content_private][$eq]=false`);
        dispatch({
            type: loadedPostbyid,
            payload: res.data.data
        });
    } catch (err) {
        dispatch({
            type: loadedPostbyid_error,
            payload: { msg: err.response.statusText, status: err.response.status }
        });
    }
}

export const hightlightPost = () => async (dispatch) => {
    try {
        const res = await api.get('/posts?populate[0]=users_permissions_user&populate[1]=users_permissions_user.profile&filters[highlights][$eq]=true&filters[Catagory][$eq]=Post&filters[content_private][$eq]=false');

        dispatch({
            type: post_hl_loaded,
            payload: res.data.data
        });
    } catch (err) {
        dispatch({
            type: post_hl_load_error,
            payload: { msg: err.response.statusText, status: err.response.status }
        });
    }
}

export const loadedPost = () => async (dispatch) => {
    try {
        const res = await api.get('/posts?populate[0]=users_permissions_user&populate[1]=users_permissions_user.profile&filters[Catagory][$eq]=Post&filters[content_private][$eq]=false');

        dispatch({
            type: post_loaded,
            payload: res.data.data
        });
    } catch (err) {
        dispatch({
            type: post_load_error,
            payload: { msg: err.response.statusText, status: err.response.status }
        });
    }
}


export const updatePost = (formData, id) => async (dispatch) => {
    try {
        const res = await api.put(`/posts/${id}?populate=comments.users_permissions_user.profile&populate=users_permissions_user.profile&filters[content_private][$eq]=false`, formData);

        dispatch({
            type: updatePost_sucessfuly,
            payload: res.data.data
        });

    } catch (err) {
        dispatch({
            type: updatePost_error,
            payload: { msg: err.response.statusText, status: err.response.status }
        });
    }
}



export const deletePost = (id) => async (dispatch) => {
    try {
        const res = await api.delete(`/posts/${id}`);

        dispatch({
            type: post_remove,
            payload: res.data
        });
    } catch (err) {
        dispatch({
            type: post_remove_error,
            payload: { msg: err.response.statusText, status: err.response.status }
        });
    }
}


export const loadedReviewsHL = () => async (dispatch) => {
    try {
        const res = await api.get("/posts?populate[0]=users_permissions_user&populate[1]=users_permissions_user.profile&filters[highlights][$eq]=true&filters[Catagory][$eq]=Review&filters[content_private][$eq]=false");
 
        dispatch({
            type: loadedhl_Review,
            payload: res.data.data
        });
    } catch (err) {
        dispatch({
            type: loadedhl_Review_error,
            payload: { msg: err.response.statusText, status: err.response.status }
        });
    }
}



export const loaedReviewHL =() => async (dispatch) =>{
    try {
        const res = await api.get("/posts?populate[0]=users_permissions_user&populate[1]=users_permissions_user.profile&filters[highlights][$eq]=true&filters[Catagory][$eq]=Review&filters[content_private][$eq]=false");

        dispatch({
            type: loadedhl_Review,
            payload:res.data.data
        });
    } catch (err) {
        dispatch({
            type: loadedhl_Review_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}

export const loaded_Review =() => async (dispatch) =>{
    try {
        const res = await api.get("/posts?populate[0]=users_permissions_user&populate[1]=users_permissions_user.profile&filters[Catagory][$eq]=Review&filters[content_private][$eq]=false");

        dispatch({
            type: loadedReview,
            payload:res.data.data
        });
    } catch (err) {
        dispatch({
            type: loadedReview_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}


export const homehighlight = () => async (dispatch) =>{
    try {
        const res = await api.get("/posts?populate[0]=users_permissions_user&populate[1]=users_permissions_user.profile&filters[content_private][$eq]=false&filters[highlights][$eq]=true");

        dispatch({
            type: home_highlight,
            payload:res.data.data
        });
    } catch (err) {
        dispatch({
            type: home_highlight_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}

export const countspost = (id) =>async (dispatch) =>{
    try {

        const resget = await api.get(`/posts/${id}?populate=comments.users_permissions_user.profile&populate=users_permissions_user.profile&filters[content_private][$eq]=false`);


        const pluspost = parseInt(resget.data.data.attributes.viewpost)+1
        console.log(pluspost);

        const body = JSON.stringify({
            data:{
                viewpost:pluspost
            }
          });
        console.log(body);
        const res = await api.put(`/posts/${id}?populate=comments.users_permissions_user.profile&populate=users_permissions_user.profile`, body);
          console.log(res.data.data);
        dispatch({
            type: count_Post,
            payload: res.data.data
        });
    } catch (err) {
        dispatch({
            type: count_Post_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}


export const myPost = (id) => async (dispatch) =>{
    try {
        
    } catch (err) {
        dispatch({
            // type: count_Post_error,
            payload: { msg: err.response.statusText, status: err.response.status }
          });
    }
}