import React from 'react'
// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";


const Myprofile = ({auth:{user:{profile}}, post: { id, Catagory,users_permissions_user,Title,discription } }) => {

  return (
    <div>
      <a href={`/posts/${id}`}>
        <div className="bg-white w-full rounded-xl p-3 ">
          <div className=" px-3 ">
            <div className='flex  items-center'>
              {profile === null ?
                <img
                  className="h-7 w-7 rounded-full "
                  src="https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg"
                  alt="profile-in-post-list"
                />
                :
                <img
                  className="h-10 w-10 rounded-full "
                  src={profile.imageUrl}
                  alt="profile-in-post-list"
                />
               }
              <div className=" items-center py-3 px-4 ">
                <div className=" text-md">
                  <p >{profile.fullname}</p>
                  <p className="text-sm">{Catagory}</p>
                </div>
              </div>
            </div>
            <div className="  py-1 justify-end">
              <div className="py-1 break-all">
                <p className="text-md font-medium text-black line-clamp-1 ">
                  {Title}
                </p>
                <p className="text-sm break-all  truncate">{discription}</p>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>
  )
}


Myprofile.propTypes = {
  post: PropTypes.object.isRequired,
  auth: PropTypes.object.isRequired
};

const mapStateToProps = (state) => ({
  // post: state.post,
  auth: state.auth
});

export default connect(mapStateToProps)(Myprofile);

//   export default Myprofile
