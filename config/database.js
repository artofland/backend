const path = require('path');

module.exports = ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host:env('DB_HOST'),
      user:env('DB_USER'),
      port:env('DB_PORT', 5432),
      password:env('DB_PASS'),
      database:env('DB_NAME'),
    },
    useNullAsDefault: true,
  },
});
