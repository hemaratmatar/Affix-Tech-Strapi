import React from "react";
// Redux
import { connect } from "react-redux";
import PropTypes from "prop-types";
import { DEFAULT_AVATAR, DEFAULT_COVER, getCover, onImageError } from "../../../utils/media";

// Shared post/review card used across Home's Highlight/Review/Problem
// sections. Mirrors the layout previously duplicated across
// Posthighlight.js / HighLight.js / Reviews.js / Postall.js, with a
// `variant` prop to switch between the compact horizontal "row" layout
// (Highlight rail) and the vertical "grid" card (Review/Problem grids).
const PostCard = ({ post, variant }) => {
  const { id, attributes } = post || {};
  if (!attributes) return null;

  const profile =
    attributes.users_permissions_user?.data?.attributes?.profile?.data
      ?.attributes;
  const avatarUrl = profile?.imageUrl || DEFAULT_AVATAR;
  const username = attributes.users_permissions_user?.data?.attributes
    ?.username;
  const coverUrl = getCover(attributes, variant === "row" ? "small" : "medium");

  const content = (
    <div className="flex flex-col px-3">
      <div className="flex flex-row items-center py-2">
        <img
          className="object-cover h-10 w-10 rounded-full"
          src={avatarUrl}
          alt="profile-in-post-list"
        />
        <p className="px-4 text-md">{username}</p>
      </div>
      <div className="py-1 justify-end">
        <div className="py-1">
          <div className="text-md font-medium text-black line-clamp-1">
            {attributes.Title}
          </div>
          <p className="text-sm truncate">{attributes.discription}</p>
        </div>
      </div>
    </div>
  );

  if (variant === "row") {
    // Highlight rail: cover image beside the content.
    return (
      <a href={`/posts/${id}`}>
        <div className="bg-white w-full rounded-xl p-3 flex flex-row items-center space-x-4">
          <img
            className="w-32 h-24 flex-shrink-0 object-cover rounded-lg"
            src={coverUrl}
            onError={onImageError(DEFAULT_COVER)}
            alt={attributes.Title || "post-cover"}
          />
          <div className="flex-1 min-w-0">{content}</div>
        </div>
      </a>
    );
  }

  // Grid card: cover image on top.
  return (
    <a href={`/posts/${id}`}>
      <div className="bg-white w-full h-full rounded-xl p-3">
        <img
          className="w-full h-40 object-cover rounded-lg"
          src={coverUrl}
          onError={onImageError(DEFAULT_COVER)}
          alt={attributes.Title || "post-cover"}
        />
        {content}
      </div>
    </a>
  );
};

PostCard.propTypes = {
  post: PropTypes.object.isRequired,
  variant: PropTypes.oneOf(["row", "grid"]),
};

const mapStateToProps = (state) => ({
  // post: state.post,
});

export default connect(mapStateToProps)(PostCard);
