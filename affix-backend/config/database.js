module.exports = ({ env }) => ({
  connection: {
    client: 'mysql',
    connection: {
      // host: JSON.stringify(process.env.DATABASE_HOST),
      // port: JSON.stringify(process.env.DATABASE_PORT),
      // database: JSON.stringify(process.env.DATABASE_NAME),
      // user: JSON.stringify(process.env.DATABASE_USERNAME),
      // password: JSON.stringify(process.env.DATABASE_PASSWORD),
      // ssl: JSON.stringify(process.env.DATABASE_SSL),

      // host: env.('DATABASE_HOST'),
      // port: env.int('DATABASE_PORT'),
      // database: env('DATABASE_NAME'),
      // user: env('DATABASE_USERNAME'),
      // password: env('DATABASE_PASSWORD'),
      // ssl: env.bool('DATABASE_SSL'),

      host: env('DATABASE_HOST', '127.0.0.1'),
      port: env.int('DATABASE_PORT', 3306),
      database: env('DATABASE_NAME', 'affix'),
      user: env('DATABASE_USERNAME', 'root'),
      password: env('DATABASE_PASSWORD', 'ovenroot'),
      ssl: env.bool('DATABASE_SSL', false),
    },
  },
});
