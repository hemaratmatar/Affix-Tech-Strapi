'use strict';

/**
 *  post controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::post.post');

// const entries = await strapi.db.query('api::post.post').findMany({
//     select: ['id','title', 'description','users_permission_user'],
//   });
