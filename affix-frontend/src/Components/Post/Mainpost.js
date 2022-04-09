import React, {
  Fragment,
  useEffect,
  // useLayoutEffect,
} from "react";

// Component
import Postall from "./Posts/Postall";
import { Link } from "react-router-dom";
// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { hightlightPost, loadedPost } from "../../Redux/action/post";
import Posthighlight from "./Posts/Posthighlight";
import Loadingpage from '../Layout/Loadingpage'

const Mainpost = ({
  loadedPost,
  hightlightPost,
  post: { posts, highlights },
}) => {
  useEffect(() => {
    // if (posts === null && highlights == null) {
    loadedPost();
    hightlightPost();
    // }

    // Redux display Log
    // console.log(highlights);
    //  console.log(posts.attributes);
  }, [loadedPost, hightlightPost]);

  //กรณีใช้งาน useLayoutEffect
  // useLayoutEffect(() => {
  // loadedPost();
  // hightlightPost();
  // console.log(highlights);
  // }, [loadedPost,hightlightPost]);

  //  const Link = (props,linkcontent) => <a {...props}>{linkcontent}</a>

  return (
    <Fragment>
      <div className="flex  bg-red-400 p-6 space-x-4 rounded-3xl">
        <div className="flex-1">
          <h4 className="text-white text-xl">Problem Content</h4>
        </div>
        <div className=" justify-end">
          <Link
            to="/posts/add"
            className="p-3 bg-red-300 text-white rounded-lg"
          >
            Add Post
          </Link>
        </div>

        {/* <div className="bg-red-200 rounded mx-auto p-4 h-full">
                   <p className="text-black">Hello</p>
                 </div>
             <h1>Post Problem Page</h1> */}
      </div>
      <div className="pt-8">
        <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
          <p className="text-lg">Post Hightlights</p>
        </div>
        <div className="flex flex-col  h-[400px] space-y-4  overflow-y-auto rounded-b-3xl p-6 bg-red-200">
          {/* สร้าง Component ใหม่เพื่อทำ loop แสดงผล */}
          {!highlights ? (<Loadingpage />) :
            highlights.map((highlight, id) => (
              <Posthighlight key={id} post={highlight} />
            ))}
        </div>
      </div>
      <div className="pt-8">
        <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
          <p className="text-lg">Problem Content</p>
        </div>
        <div className="inline-grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-3  h-full w-full  overflow-y-auto rounded-b-3xl p-6 bg-red-200">
          {!posts ? <Loadingpage /> : posts.map((post, id) => (
            <Postall key={id} post={post} />
          ))}
        </div>
      </div>
    </Fragment>
  );
};
Mainpost.propTypes = {
  loadedPost: PropTypes.func.isRequired,
  hightlightPost: PropTypes.func.isRequired,
  post: PropTypes.object.isRequired,
};

const mapStateToProps = (state) => ({
  post: state.post,
});

export default connect(mapStateToProps, { loadedPost, hightlightPost })(
  Mainpost
);

// export default Mainpost;
