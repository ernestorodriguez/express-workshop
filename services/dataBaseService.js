const { dataBase: db } = require('config');
const Sequelize = require('sequelize');
const sequelize = new Sequelize(db.name, db.user, db.password, {
  host: db.host,
  dialect:'mysql'
});

try {
  sequelize.authenticate();
} catch (error) {
  console.error('Unable to connect to the database:', error);
}

const getById = (table, id) => {
  return sequelize.query(`SELECT * FROM ${table} WHERE id = ${id}`,{
    type:sequelize.QueryTypes.SELECT
  });
}

module.exports = {
  getById
}