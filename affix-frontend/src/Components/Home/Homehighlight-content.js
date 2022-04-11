import React from 'react'
// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";


const Homehighlightcontent = ({ post: { id, attributes } }) => {

  return (
    <div>
      <a href={`/posts/${id}`}>
        <div className="bg-white w-full h-40 rounded-xl p-3">
          <div className="flex flex-col px-3 ">
            <div className='flex flex-row items-center'>
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
              <div className="flex flex-col items-center py-3 px-4 ">
                <div className=" text-md">
                  <p >{attributes.users_permissions_user.data.attributes.username}</p>
                  <p className="text-sm">{attributes.Catagory}</p>
                </div>
              </div>
            </div>
            <div className="py-1 justify-end">
              <div className="py-1">
                <div className="text-md font-medium text-black line-clamp-1 ">
                  {attributes.Title}
                </div>
                <p className="text-sm truncate">{attributes.discription}</p>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>
  )
}


Homehighlightcontent.propTypes = {
  post: PropTypes.object.isRequired,
};

const mapStateToProps = (state) => ({
  // post: state.post,
});

export default connect(mapStateToProps)(Homehighlightcontent);

//   export default Homehighlightcontent
