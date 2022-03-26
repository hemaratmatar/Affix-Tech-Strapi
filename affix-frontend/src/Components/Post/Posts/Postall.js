import React from "react";
// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
// Components
import { Link } from "react-router-dom";

const Postall = ({ post: { id, attributes } }) => {
  return (
    <div>
      <div className="bg-white w-full h-40 rounded-xl p-3">
        {/* <div className=" flex-1 flex-shrink-0"></div> */}
        <div className="flex flex-col px-3 ">
          <div className=" justify-end">
          <Link to={`/posts/${id}`}>
            <div className="py-2">
              <div className="text-md font-medium text-black line-clamp-1 ">
                {attributes.Title}
              </div>
              <p className="truncate">{attributes.discription}</p>
            </div>
          </Link>            
          </div>
          {/* <p className="truncate">{renderHTML(attributes.discription)}</p> */}
          <div className="flex flex-row items-center  ">
            <img
              className="h-10 w-10 rounded-full "
              src={attributes.users_permissions_user.data.attributes.imageUrl}
              alt="profile-in-post-list"
            />
            <p className="px-4 text-md">
              {attributes.users_permissions_user.data.attributes.username}{" "}
            </p>
          </div>
        </div>
        
      </div>
    </div>
  );
};

Postall.propTypes = {
  post: PropTypes.object.isRequired,
};

const mapStateToProps = (state) => ({
  // post: state.post,
});

export default connect(mapStateToProps)(Postall);
