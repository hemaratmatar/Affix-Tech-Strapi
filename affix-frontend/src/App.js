import React, { useEffect } from "react";
import { Provider } from "react-redux";
import { Route, Switch } from "react-router-dom";
import Login from "./Components/auth/Login";
import Signup from "./Components/auth/Signup";
// import Layout from "./Components/Layout/Layout";
import Routes from "./Components/router/Routes";
import { loadUser } from "./Redux/action/auth";
import store from "./Redux/store";
import setAuthToken from "./Redux/utils/setAuthToken";
import { LOGOUT } from "./Redux/action/types";
import Loadingpage from "./Components/Layout/Loadingpage";

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
    window.addEventListener("storage", () => {
      if (!localStorage.token) store.dispatch({ type: LOGOUT });
    });
  }, []);

  return (
    <Provider store={store}>
      <>
        <Switch>
          <Route exact path="/" component={Login} />
          <Route path="/signup" component={Signup} />
          <Route path="/load" component={Loadingpage} />
          <Route component={Routes} />
        </Switch>
      </>
    </Provider>
  );
};

export default App;
