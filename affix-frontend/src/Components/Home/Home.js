import React, { Fragment, useEffect } from "react";
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { homehighlight, loadedPost, loaded_Review } from "../../Redux/action/post";

import Loadingpage from "../Layout/Loadingpage";
import PostCard from "../Post/Posts/PostCard";

const Section = ({ title, items, loading, variant, emptyText, bodyClass }) => (
  <div className="pt-8">
    <div className="bg-red-400 text-white rounded-t-3xl p-4">
      <p className="text-lg">{title}</p>
    </div>
    <div className={`rounded-b-3xl p-6 bg-red-200 ${bodyClass}`}>
      {loading && (!items || items.length === 0) ? (
        <Loadingpage />
      ) : !items || items.length === 0 ? (
        <p className="text-sm text-gray-600">{emptyText}</p>
      ) : (
        items.map((post) => <PostCard key={post.id} post={post} variant={variant} />)
      )}
    </div>
  </div>
);

const GRID = "grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-3 w-full";

const Home = ({
  post: { posts, reviews, homehighlights, loading },
  loaded_Review,
  loadedPost,
  homehighlight,
}) => {
  useEffect(() => {
    homehighlight();
    loaded_Review();
    loadedPost();
  }, [homehighlight, loaded_Review, loadedPost]);

  return (
    <Fragment>
      <Section
        title="Highlight"
        items={homehighlights}
        loading={loading}
        variant="row"
        emptyText="ยังไม่มีโพสต์ที่ถูก Highlight"
        bodyClass="flex flex-col max-h-[460px] w-full space-y-4 overflow-y-auto"
      />
      <Section
        title="Review Content"
        items={reviews}
        loading={loading}
        variant="grid"
        emptyText="ยังไม่มีรีวิว"
        bodyClass={`${GRID} max-h-[640px] overflow-y-auto`}
      />
      <Section
        title="Problem Content"
        items={posts}
        loading={loading}
        variant="grid"
        emptyText="ยังไม่มีโพสต์"
        bodyClass={GRID}
      />
    </Fragment>
  );
};

Home.propTypes = {
  post: PropTypes.object.isRequired,
  loadedPost: PropTypes.func.isRequired,
  loaded_Review: PropTypes.func.isRequired,
  homehighlight: PropTypes.func.isRequired,
};

const mapStateToProps = (state) => ({
  post: state.post,
});

export default connect(mapStateToProps, {
  loadedPost,
  loaded_Review,
  homehighlight,
})(Home);
