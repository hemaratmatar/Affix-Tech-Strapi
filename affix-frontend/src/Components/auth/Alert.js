import React, { Fragment } from "react";
import PropTypes from "prop-types";
import { connect } from "react-redux";

const Alert = ({ alerts }) => {
  // console.log(alerts.length);
  return (
    //   <div className="alert-wrapper">
    //     {alerts.map((alert) => (
    //       <div key={alert.id} className={`alert alert-${alert.alertType}`}>
    //         {alert.message}
    //       </div>
    //     ))}
    //   </div>

    <Fragment>
      {/* <span className="text-xl inline-block mr-5 align-middle">
                <i className="fas fa-bell" />
              </span> */}
      { alerts.map((alert) => (
        <div className="text-white px-6 py-4 border-0 rounded relative mb-4 bg-red-500">
          <span className="inline-block align-middle mr-8">
            {alert.status = 400 ? <b className="capitalize">{alert.message}</b> : <b className="capitalize">{alert.status}<br/>{alert.message}</b>}
            {/* <b className="capitalize">{alert.status}<br/>{alert.message}</b> */}
          </span>
        </div>
      ))}
    </Fragment>
  );
};
Alert.propTypes = {
  alerts: PropTypes.array.isRequired,
};

const mapStateToProps = (state) => ({
  alerts: state.alert,
});

export default connect(mapStateToProps)(Alert);
