import React, {
  useEffect,
  useLayoutEffect,
} from "react";
import { Link } from "react-router-dom";
// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { loadedPost } from "../../Redux/action/post";

// import renderHTML from "react-render-html";

// const Postlist =({post:{id,attributes}}) =>{
// console.log(attributes);
// return(
//   <div className="bg-white w-full h-24 rounded-xl p-3">
//   <div className=" flex-shrink-0"></div>
//   <div className="px-3">
//     <div className="text-lg font-medium text-black line-clamp-1">

//     </div>
//     <p>Discription</p>
//   </div>
// </div>
// );
// }

const Mainpost = ({ loadedPost, post: { posts } }) => {
  useEffect(() => {
    loadedPost();
     console.log(posts);
  }, [loadedPost]);

  // useLayoutEffect(() => {
  //   loadedPost();
  //   // console.log(posts);
  // }, [loadedPost]);

  // for (const [id,attributes] of Object.entries(posts.data)) {

  // }

  return (
    <>
      <div className="flex flex-row bg-red-200 p-6 space-x-4 rounded-3xl">
        <div>
          <Link
            to="/post/singlepost/:id"
            className=" p-3 bg-slate-800 text-white rounded-lg"
          >
            {" "}
            Post Single Page{" "}
          </Link>{" "}
        </div>
        <div>
          <Link
            to="/post/add"
            className="p-3 bg-slate-800 text-white rounded-lg"
          >
            Add Post{" "}
          </Link>
        </div>

        {/* <div className="bg-red-200 rounded mx-auto p-4 h-full">
                   <p className="text-black">Hello</p>
                 </div>
             <h1>Post Problem Page</h1> */}
      </div>
      <div className="pt-8">
        {/* <p className="text-xl py-2">Hightlights</p> */}
        {/* bg-gradient-to-l from-[#FF5C42] via-[#FA8072] to-[#FF5C42]  */}
        <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
          <p className="text-xl">Post Hightlights</p>
        </div>
        <div className="flex flex-col  h-[400px] space-y-4  overflow-y-auto rounded-b-3xl p-6 bg-gray-200">
          {posts.map((post) => (
            //สร้าง Component ใหม่เพื่อทำ loop แสดงผล
            <Link to={`/post/singlepost/${post.id}`}>
            <div className="bg-white w-full h-full rounded-xl p-3">
              <div className=" flex-shrink-0"></div>
              <div className="flex flex-col px-3">
                <div className="flex flex-row items-center ">
                  <img
                    className="h-10 w-10 rounded-full "
                    src={
                      post.attributes.users_permissions_user.data.attributes
                        .imageUrl
                    }
                    alt=""
                  />
                  <p className="px-4 text-lg">
                    {
                      post.attributes.users_permissions_user.data.attributes
                        .username
                    }
                  </p>
                </div>
                <div className="py-2">
                  <div className="text-lg font-medium text-black line-clamp-1 ">
                    {post.attributes.Title}
                  </div>
                  <p className="truncate">{post.attributes.discription}</p>
                </div>

                {/* <p className="truncate">{renderHTML(post.attributes.discription)}</p> */}
              </div>
            </div>
            </Link>
          ))}
        </div>
      </div>
      <div className="pt-8">
        {/* <p className="text-xl py-2">Hightlights</p> */}
        {/* bg-gradient-to-l from-[#FF5C42] via-[#FA8072] to-[#FF5C42]  */}
        <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
          <p className="text-xl">Content</p>
        </div>
        <div className="flex flex-col  h-full space-y-4  overflow-y-auto rounded-b-3xl p-6 bg-gray-200">
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
          <div className="bg-white w-full h-24 rounded-xl p-3">
            <div className=" flex-shrink-0"></div>
            <div className="px-3">
              <div className="text-lg font-medium text-black line-clamp-1">
                Title
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};
Mainpost.propTypes = {
  loadedPost: PropTypes.func.isRequired,
  post: PropTypes.object.isRequired,
};

const mapStateToProps = (state) => ({
  post: state.post,
});

export default connect(mapStateToProps, { loadedPost })(Mainpost);

// export default Mainpost;
