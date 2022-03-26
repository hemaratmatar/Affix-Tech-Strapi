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
    loadedPostbyid_error
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
        default:
            return state;
    }
}

export default postReducer

