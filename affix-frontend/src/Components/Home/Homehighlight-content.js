import React from 'react'
// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";


const Homehighlightcontent = ({ post: { id, attributes } }) => {

  return (
    <div>
      <a href={`/posts/${id}`}>
        <div className="bg-white w-full h-full rounded-xl p-3">
          <div className="flex flex-col px-3 ">
            <div className='flex flex-row items-center'>
              {!attributes.users_permissions_user || attributes.users_permissions_user.data.attributes.profile.data === null ?
                <img
                  className="object-cover h-7 w-7 rounded-full "
                  src="https://res.cloudinary.com/carisoven/image/upload/v1791194219/affix_avatar_default_120abe7f3f.jpg"
                  alt="profile-in-post-list"
                />
                :
                <img
                  className="object-cover h-7 w-7 rounded-full "
                  src={attributes.users_permissions_user.data.attributes.profile.data.attributes.imageUrl}
                  alt="profile-in-post-list"
                />
              }
              <div className="flex flex-col items-start py-3 px-4 ">
                <div className=" text-md">
                  <p>{attributes.users_permissions_user && attributes.users_permissions_user.data.attributes.username}</p>
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
