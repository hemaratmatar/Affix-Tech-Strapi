import {
    post_sucessfuly,
    post_error,
    post_load_error,
    post_loaded,
    post_hl_loaded,
    post_hl_load_error,
    loadedPostbyid,
    loadedPostbyid_error,
    updatePost_sucessfuly,
    updatePost_error,
    post_remove,
    post_remove_error,
    loadedhl_Review,
    loadedhl_Review_error,
    loadedReview_error,
    loadedReview,
    home_highlight,
    home_highlight_error,
    count_Post,
    count_Post_error
} from "../action/types";


const initialState = {
    homehighlights:[],
    hlreviews: [],
    reviews: [],
    highlights: [],
    posts: [],
    post: null,
    loading: true,
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
        //Delete Post
        case post_remove:
            return {
                ...state,
                post: payload,
                loading: false
            }
        case post_remove_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        //Review Post
        case loadedhl_Review:
            return {
                ...state,
                hlreviews: payload,
                loading: false
            }

        case loadedhl_Review_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        case loadedReview:
            return {
                ...state,
                reviews: payload,
                loading: false
            }
        case loadedReview_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        case home_highlight:
            return {
                ...state,
                homehighlights: payload,
                loading: false
            }
        case home_highlight_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        case count_Post:
                return{
                    ...state,
                    post: payload,
                    loading: false
                }
        case count_Post_error:
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

