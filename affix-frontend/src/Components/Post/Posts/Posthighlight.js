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
        <div className="flex flex-col px-3">
          <div className="flex flex-row items-center ">
          {attributes.users_permissions_user.data.attributes.profile.data === null ? 
              <img
                  className="object-cover h-10 w-10 rounded-full "
                  src="https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg"
                  alt="profile-in-post-list"
                />
              :
              <img
                className="object-cover h-10 w-10 rounded-full "
                src={attributes.users_permissions_user.data.attributes.profile.data.attributes.imageUrl}
                alt="profile-in-post-list"
              /> 
              }

            <p className="px-4 text-md">
              {attributes.users_permissions_user.data.attributes.username}
            </p>
          </div>
          <a href={`/posts/${id}`}>
            <div className="py-2">
              <div className="text-md font-medium text-black line-clamp-1 ">
                {attributes.Title}
              </div>
              <p className="text-sm truncate">{attributes.discription}</p>
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
