module.exports = [
  'strapi::errors',
  {
    name: 'strapi::security',
    config: {
      contentSecurityPolicy: {
        useDefaults: true,
        directives: {
          'connect-src': ["'self'", 'https:'],
          'img-src': ["'self'", 'data:', 'blob:', 'res.cloudinary.com'],
          'media-src': ["'self'", 'data:', 'blob:', 'res.cloudinary.com'],
          upgradeInsecureRequests: null,
        },
      },
    },
  },
  {
    name: 'strapi::cors',
    config: {
      enabled: true,
      header: '*',
      origin: [
        'http://localhost:3000',
        'http://localhost:1337',
        'https://localhost:3000',
        'https://localhost:1337',
        'http://app.affix-tech.com',
        'https://app.affix-tech.com',
        'http://cloud.affix-tech.com',
        'https://cloud.affix-tech.com',
        'http://uat.affix-tech.com',
        'https://uat.affix-tech.com'
      ]
    }
  },
  'strapi::poweredBy',
  'strapi::logger',
  'strapi::query',
  'strapi::body',
  'strapi::session',
  'strapi::favicon',
  'strapi::public',
];
