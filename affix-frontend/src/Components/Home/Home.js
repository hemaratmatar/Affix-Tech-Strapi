import React, { Fragment, useEffect } from "react";


import { connect } from "react-redux";
import PropTypes from "prop-types";
import { homehighlight, loadedPost, loaded_Review } from "../../Redux/action/post";

import Loadingpage from "../Layout/Loadingpage";
import Postall from "../Post/Posts/Postall";
import Review from "../Review/Review";
import Reviews from "../Review/Reviews/Reviews";
import HomehighlightContent from "./Homehighlight-content";

const Home = ({
  post: { posts, reviews, homehighlights},
  // auth: { user },
  loaded_Review,
  loadedPost,
  homehighlight
}) => {
  useEffect(() => {
    loaded_Review();
    loadedPost();
    homehighlight()

  }, [loaded_Review, loadedPost,homehighlight])

  return (
    <Fragment>
      <div className="pt-8">
        <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
          <p className="text-lg">Highlight</p>
        </div>
        <div className="flex flex-col  h-[375px] w-full space-y-4 overflow-y-auto rounded-b-3xl p-6 bg-red-200">
          {!homehighlights ? <Loadingpage /> : homehighlights.map((post, id) => (
            <HomehighlightContent key={id} post={post} />
          ))}
        </div>
      </div>
      <div className="pt-8">
        <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
          <p className="text-lg">Review Content</p>
        </div>
        <div className="inline-grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-3  h-[560px] w-full  overflow-y-auto rounded-b-3xl p-6 bg-red-200">
          {!reviews ? <Loadingpage /> : reviews.map((post, id) => (
            <Reviews key={id} post={post} />
          ))}
        </div>
      </div>
      <div className="pt-8">
        <div className="bg-red-400 text-white rounded-t-3xl p-4 ">
          <p className="text-md">Problem Content</p>
        </div>
        <div className="inline-grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-3  h-full w-full  overflow-y-auto rounded-b-3xl p-6 bg-red-200">
          {posts === null ? <Loadingpage /> : posts.map((post, id) => (
            <Postall key={id} post={post} />
          ))}
        </div>
      </div>

      {/* <p className="text-xl py-2">Hightlights</p> */}
      {/* bg-gradient-to-l from-[#FF5C42] via-[#FA8072] to-[#FF5C42]  */}
      {/* <div className="bg-red-400 text-white rounded-t-2xl p-4 ">
        <p className="text-lg">Hightlights</p>
      </div> */}
      {/* <div className="flex flex-col  h-[400px] space-y-4  overflow-y-auto rounded-b-2xl p-6 bg-gray-200">
        <div className="bg-white w-full h-24 rounded-xl p-3">
          <div className=" flex-shrink-0"></div>
          <div className="px-3">
            <div className="text-md font-medium text-black line-clamp-1">
              Title
            </div>
          </div>
        </div>
        <div className="bg-white w-full h-24 rounded-xl p-3">
          <div className=" flex-shrink-0"></div>
          <div className="px-3">
            <div className="text-md font-medium text-black line-clamp-1">
              Title
            </div>
          </div>
        </div>
        <div className="bg-white w-full h-24 rounded-xl p-3">
          <div className=" flex-shrink-0"></div>
          <div className="px-3">
            <div className="text-md font-medium text-black line-clamp-1">
              Title
            </div>
          </div>
        </div>
        <div className="bg-white w-full h-24 rounded-xl p-3">
          <div className=" flex-shrink-0"></div>
          <div className="px-3">
            <div className="text-md font-medium text-black line-clamp-1">
              Title
            </div>
          </div>
        </div>
        <div className="bg-white w-full h-24 rounded-xl p-3">
          <div className=" flex-shrink-0"></div>
          <div className="px-3">
            <div className="text-md font-medium text-black line-clamp-1">
              Title
            </div>
          </div>
        </div>
        <div className="bg-white w-full h-24 rounded-xl p-3">
          <div className=" flex-shrink-0"></div>
          <div className="px-3">
            <div className="text-md font-medium text-black line-clamp-1">
              Title
            </div>
          </div>
        </div>
        <div className="bg-white w-full h-24 rounded-xl p-3">
          <div className=" flex-shrink-0"></div>
          <div className="px-3">
            <div className="text-md font-medium text-black line-clamp-1">
              Title
            </div>
          </div>
        </div>
      </div> */}
    </Fragment>
  );
};

Home.propTypes = {
  loadedPost: PropTypes.func.isRequired,
  loaded_Review: PropTypes.func.isRequired,
  homehighlight:PropTypes.func.isRequired
  // uploadImage: PropTypes.func.isRequired,
  // imagetext: PropTypes.object.isRequired,
};

const mapStateToProps = (state) => ({
  post: state.post
});

export default connect(mapStateToProps, {
  loadedPost,
  loaded_Review,
  homehighlight
  // uploadImage

})(Home);

// export default Home;
