import React from "react";
// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
// Components
// import { Link } from "react-router-dom";

const Postall = ({ post: { id, attributes } }) => {

  // console.log(attributes.users_permissions_user.data.attributes.profile.data.attributes.imageUrl);
  return (
    <div><a href={`/posts/${id}`}>     
      <div className="bg-white w-full h-40 rounded-xl p-3">
        <div className="flex flex-col px-3 ">
          <div className="flex flex-row items-center py-2 ">
            {attributes.users_permissions_user.data.attributes.profile.data === null ?
              <img
                className="h-7 w-7 rounded-full "
                src="https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg"
                alt="profile-in-post-list"
              />
              :
              <img
                className="h-10 w-10 rounded-full "
                src={attributes.users_permissions_user.data.attributes.profile.data.attributes.imageUrl}
                alt="profile-in-post-list"
              />
            }
            <p className="px-4 text-md">
              {attributes.users_permissions_user.data.attributes.username}
            </p>
          </div>        
          <div className="py-2 justify-end">
              <div className="py-2">
                <div className="text-md font-medium text-black line-clamp-1 ">
                  {attributes.Title}
                </div>
                <p className="text-sm truncate">{attributes.discription}</p>
              </div>
            
          </div>
        </div>

      </div>
    </a></div>
  );
};

Postall.propTypes = {
  post: PropTypes.object.isRequired,
};

const mapStateToProps = (state) => ({
  // post: state.post,
});

export default connect(mapStateToProps)(Postall);
