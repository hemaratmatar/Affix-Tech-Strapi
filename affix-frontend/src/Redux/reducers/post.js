import { 
    post_sucessfuly,
    post_error,
    uploadImage_complete,
    uploadImage_error
} from "../action/types";


const initialState = {
    posts:null,
    post:null,
    loading:false,
    imagetext:null,
    error:{}
}

function postReducer(state = initialState,action) {
    const {type,payload} =action;
    switch (type) {
        case post_sucessfuly:
            return{
                ...state,
                post:payload,
                loading:false
            }
        case post_error:
            return{
                error:payload,
                loading:false
            }
        case uploadImage_complete:
            return{
                imagetext:payload,
                loading:false
            }
        case uploadImage_error:
            return{
                error:payload,
                loading:false
            }
        default:
            return state;
    }
}

export default postReducer

