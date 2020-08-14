require('dotenv').config();

const Sequelize = require('sequelize');

const sequelize = process.env.JAWSDB_URL
  ? new Sequelize(process.env.JAWSDB_URL)
  : new Sequelize('ecommerce_db', 'root', 'Solnish1', {
      host: 'localhost',
      port: 3306,
      dialect: 'mysql'
     
    });

module.exports = sequelize;

