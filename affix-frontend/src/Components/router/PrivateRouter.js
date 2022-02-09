import React from "react";

import PropTypes from "prop-types";
import { connect } from "react-redux";
// import {  } from "react-router-dom";
import { Redirect,Route } from "react-router-dom";

const PrivateRouter = ({ component: Component,auth:{isAuthenticated,loading,userid} ,...rest }) => {
    console.log(isAuthenticated);
  return (
    <Route
      {...rest}
      render={props =>
        isAuthenticated && !loading  ? (
            <Component {...props} />
          ) : (
            <Redirect to="/" />
          )
      }
    />
  );
};

PrivateRouter.propTypes = {
    auth: PropTypes.object.isRequired
  };
  
  const mapStateToProps = state => ({
    auth: state.auth
  });
  
  export default connect(mapStateToProps)(PrivateRouter);

// export default AdminRoutes;
