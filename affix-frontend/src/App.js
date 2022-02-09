import React , {Fragment, useEffect} from 'react';
import { Route,Switch,Redirect } from 'react-router-dom';
import Login from "./Components/auth/Login";
import Signup from './Components/auth/Signup';
// import Layout from "./Components/Layout/Layout";
import Routes from './Components/router/Routes';
import { loadUser } from './Redux/action/auth';
import store from './Redux/store';
import setAuth from './Redux/utils/setAuth';
;

if (localStorage.success) {
  setAuth(localStorage.success)
}

function App() {
  useEffect(() => {

  // store.dishpatch(loadUser());
    
  }, );
  
  return (
    <Fragment>
      <Switch>
      <Route exact path="/" component={Login} />   
      <Route path="/signup" component={Signup} />   
      <Route component={Routes}/>
      </Switch>
    </Fragment>
  );
}

export default App;
