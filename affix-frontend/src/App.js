import React, { useEffect } from "react";
import { Provider } from "react-redux";
import { Route, Routes } from "react-router-dom";
import Login from "./Components/auth/Login";
import Signup from "./Components/auth/Signup";
// import Layout from "./Components/Layout/Layout";
// import Routes from "./Components/router/Routes";
import { loadUser } from "./Redux/action/auth";
import store from "./Redux/store";
import setAuthToken from "./Redux/utils/setAuthToken";
import { LOGOUT } from "./Redux/action/types";
import Loadingpage from "./Components/Layout/Loadingpage";
import Layout from "./Components/Layout/Layout";
import PrivateRoute from "./Components/router/PrivateRoute";
import Home from "./Components/Home/Home";
import Addpost from "./Components/Post/Addpost";
import Mainpost from "./Components/Post/Mainpost";
import Postpage from './Components/Post/Postpage';
import Profile from './Components/Porfile/Profile'
import Report from "./Components/Report/Report";

const App = () => {
  useEffect(() => {
    // check for token in LS when app first runs
    if (localStorage.token) {
      // if there is a token set axios headers for all requests
      setAuthToken(localStorage.token);
    }
    // try to fetch a user, if no token or invalid token we
    // will get a 401 response from our API
    store.dispatch(loadUser());

    // log user out from all tabs if they log out in one tab
    window.addEventListener('storage', () => {
      if (!localStorage.token) store.dispatch({ type: LOGOUT });
    });
  }, []);

  return (
    <Provider store={store}>
      {/* <Router> */}
        <Routes>
          <Route index path="/" element={<Login />} />
          <Route path="/signup" element={<Signup />} />
          <Route path="/load" element={<Loadingpage/>} />
          <Route path="/" element={<PrivateRoute component={Layout}/>}>
            <Route path="home" element={<PrivateRoute component={Home}/>}  />
            {/* <Route path="reviews" element={<Review />} /> */}
            <Route path="post" element={<PrivateRoute component={Mainpost} />} />
            <Route path="post/add" element={<PrivateRoute component={Addpost} />} />
            <Route path="/post/singlepost/:id" element={<PrivateRoute component={Postpage} />} />
            <Route path="/profile" element={<PrivateRoute component={Profile}/>}/>
            <Route path="reports" element={<PrivateRoute component={Report}/>}/>
            {/* ยังไม่ต้องแอด Chat Page */}
          </Route>
        </Routes>
      {/* </Router> */}
    </Provider>
  );
};

export default App;
