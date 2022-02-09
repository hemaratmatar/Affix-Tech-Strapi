module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '7255b479510d6ee7eb4d9fb32ade6a27'),
  },
});
