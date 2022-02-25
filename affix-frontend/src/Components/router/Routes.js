import React from "react";
import { Switch } from "react-router-dom";

import Layout from "../Layout/Layout";
import Mainpost from "../Post/Mainpost";
import PrivateRouter from './PrivateRouter'


const Routes = () => {
  return (
    <section>
    <Switch>
      <PrivateRouter path="/" component={Layout}/>
    </Switch>
    </section>
  )
}

export default Routes;