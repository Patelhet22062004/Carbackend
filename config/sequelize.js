const Sequelize = require('sequelize');

const sequelize = new Sequelize('sql12728679', 'sql12728679', '4kVYcUBJ5Y', {
  host: 'localhost',
  dialect: 'mysql',  // <-- Explicitly specify the dialect here (e.g., 'mysql', 'postgres', 'sqlite', etc.)
});
