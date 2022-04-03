import {
    post_sucessfuly,
    post_error,
    uploadImage_complete,
    uploadImage_error,
    post_load_error,
    post_loaded,
    post_hl_loaded,
    post_hl_load_error,
    loadedPostbyid,
    loadedPostbyid_error,
    updatePost_sucessfuly,
    updatePost_error
} from "../action/types";


const initialState = {
    highlights: [],
    posts: [],
    post: null,
    loading: true,
    imagetext: null,
    error: {}
}

function postReducer(state = initialState, action) {
    const { type, payload } = action;

    switch (type) {
        //Add Post Suceessfuly
        case post_sucessfuly:
            return {
                ...state,
                post: payload,
                loading: false
            }
        case post_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        //Highlight Post Loaded
        case post_hl_loaded:
            return {
                ...state,
                highlights: payload,
                loading: false
            }
        case post_hl_load_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        //Post All Load
        case post_loaded:
            return {
                ...state,
                posts: payload,
                loading: false
            }
        case post_load_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
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
        // Load By id
        case loadedPostbyid:
            return {
                ...state,
                post: payload,
                loading: false
            }
        case loadedPostbyid_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        // Update Post
        case updatePost_sucessfuly:
            return {
                ...state,
                post: payload,
                loading: false
            }
        case updatePost_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        default:
            return state;
    }
}

export default postReducer

