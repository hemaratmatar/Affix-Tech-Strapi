import React from "react";
import { Switch } from "react-router-dom";

import Layout from "../Layout/Layout";
import PrivateRouter from './PrivateRouter'


const Routes = () => {
  return (
    <section>
    <Switch>
      <PrivateRouter path="/home" component={Layout}/>
    </Switch>
    </section>
  )
}

export default Routes;