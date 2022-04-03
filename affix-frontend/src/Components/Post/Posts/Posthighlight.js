import React from "react";
// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
// Components
// import { Link } from "react-router-dom";

const Posthighlight = ({ post: { id, attributes } }) => {
  return (
    <div>
 <div className="bg-white w-full h-full rounded-xl p-3">
        <div className=" flex-shrink-0"></div>
        <div className="flex flex-col px-3">
          <div className="flex flex-row items-center ">
            <img
              className="h-10 w-10 rounded-full "
              src={attributes.users_permissions_user.data.attributes.imageUrl}
              alt="profile-in-post-list"
            />
            <p className="px-4 text-lg">
              {attributes.users_permissions_user.data.attributes.username}
            </p>
          </div>
          <a href={`/posts/${id}`}>
            <div className="py-2">
              <div className="text-lg font-medium text-black line-clamp-1 ">
                {attributes.Title}
              </div>
              <p className="truncate">{attributes.discription}</p>
            </div>
          </a>
          {/* <p className="truncate">{renderHTML(attributes.discription)}</p> */}
        </div>
      </div>
    </div>
  );
};

Posthighlight.propTypes = {
  post: PropTypes.object.isRequired,
};

const mapStateToProps = (state) => ({
  // post: state.post,
});

export default connect(mapStateToProps)(Posthighlight);

// export default Posthighlight
