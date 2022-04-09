// import React from "react";

// import { connect } from "react-redux";
// import PropTypes from "prop-types";
// import { useNavigate, Route } from "react-router-dom";
// import Loadingpage from "../Layout/Loadingpage";




// const PrivateRouter = ({
//   component: Component,
//   auth: { isAuthenticated, loading, user },
//   ...rest
// }) => {
//   return (
//     <Route
//       {...rest}
//       render={(props) =>
//         loading ? (
//           <Loadingpage />
//         ) : isAuthenticated ? (
//           <Component {...props} />
//         ) : (
//           <Redirect to="/" />
//         )
//       }
//     />
//   );
// };

// PrivateRouter.propTypes = {
//   auth: PropTypes.object.isRequired,
// };

// const mapStateToProps = (state) => ({
//   auth: state.auth,
// });

// export default connect(mapStateToProps)(PrivateRouter);

// // export default PrivateRouter;


   
import React from 'react';
import { Navigate, Outlet } from 'react-router-dom';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import Loadingpage from '../Layout/Loadingpage';

const PrivateRoute = ({
  component: Component,
  auth: { isAuthenticated, loading },
}) => {
  // console.log(loading);
  if (loading) return <Loadingpage />;
  if (isAuthenticated) return <Outlet />;

  return <Navigate to="/" />;

};

PrivateRoute.propTypes = {
  auth: PropTypes.object.isRequired
};

const mapStateToProps = (state) => ({
  auth: state.auth
});

export default connect(mapStateToProps)(PrivateRoute);