import {combineReducers} from 'redux'
import auth from './auth'
// import users from './user'
import alert from './alert';
import post from './post'
import profile from './profile';
import comment from './comment'
export default combineReducers({
    auth,
    alert,
    post,
    comment,
    profile
})