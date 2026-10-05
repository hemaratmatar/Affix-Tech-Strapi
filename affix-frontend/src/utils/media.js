// Shared media helpers for Strapi-provided images (Cover relation, etc.)
// Cloudinary is the upload provider (see affix-backend/config/plugins.js),
// so Strapi media attributes already carry absolute Cloudinary URLs —
// this module just picks the best-fit format and provides a safe fallback.

export const DEFAULT_COVER =
  "https://res.cloudinary.com/carisoven/image/upload/v1791194219/affix_avatar_default_120abe7f3f.jpg";

export const DEFAULT_AVATAR =
  "https://res.cloudinary.com/carisoven/image/upload/v1791194219/affix_avatar_default_120abe7f3f.jpg";

/**
 * Pick the best available image URL for a Strapi media relation attached to
 * a post's `Cover` field, preferring a named format (large/medium/small)
 * and falling back to the original upload URL, then a static default.
 *
 * @param {object} attributes - post.attributes (Strapi v4 entity attributes)
 * @param {string} size - preferred format key, e.g. "large" | "medium" | "small" | "thumbnail"
 * @returns {string}
 */
export const getCover = (attributes, size = "large") => {
  const media = attributes?.Cover?.data?.attributes;
  if (!media) return DEFAULT_COVER;

  const formatUrl = media.formats?.[size]?.url;
  return formatUrl || media.url || DEFAULT_COVER;
};

/**
 * Returns an <img onError> handler that swaps the broken src for a fallback
 * exactly once (guards against an infinite error loop if the fallback itself
 * fails to load).
 *
 * @param {string} fallbackSrc
 */
export const onImageError = (fallbackSrc = DEFAULT_COVER) => (event) => {
  if (event.target.src !== fallbackSrc) {
    event.target.onerror = null;
    event.target.src = fallbackSrc;
  }
};
