import { 
    add_comment, 
    add_comment_error, 
    delete_comment, 
    delete_comment_error, 
    edit_comment, 
    edit_comment_error, 
    show_comment, 
    show_comment_error 
} from "../action/types";


const initialState = {
    comments: [],
    comment: null,
    loading: true,
    error: {}
}

function commentReducer(state = initialState, action) {

    const { type, payload } = action;

    switch (type) {
        case add_comment:
            return {
                ...state,
                comment: payload,
                loading: false
            }
        case add_comment_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        case show_comment:
            return {
                ...state,
                comments: payload,
                loading: false
            }
        case show_comment_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        case edit_comment:
            return {
                ...state,
                comment: payload,
                loading: false
            }
        case edit_comment_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        case delete_comment:
            return {
                ...state,
                comment: payload,
                loading: false
            }
        case delete_comment_error:
            return {
                ...state,
                error: payload,
                loading: false
            }
        default:
            return state;
    }

}
export default commentReducer