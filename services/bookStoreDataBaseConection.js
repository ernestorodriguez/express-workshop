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

const get = (table) => {
  let query =`SELECT * FROM ${table}`;
  return sequelize.query(query,{
    type:sequelize.QueryTypes.SELECT
  });
}

const getById = (table, id) => {
  return sequelize.query(`SELECT * FROM ${table} WHERE id = ${id}`,{
    type:sequelize.QueryTypes.SELECT
  });
}

const deleteById = (table, id) => {
  return sequelize.query(`DELETE FROM ${table} WHERE id = ${id}`,{
    type:sequelize.QueryTypes.DELETE
  });
}

const updateById = (table, id, data) => {
  return sequelize.query(`UPDATE ${table} SET ${data} WHERE id = ${id}`, {
    type:sequelize.QueryTypes.UPDATE
  });
}

const insertInto = (table, data) => {
  return sequelize.query(`INSERT INTO ${table}(${data.colunms}) VALUES(${data.values})`);
}

module.exports = {
  get,
  getById,
  insertInto,
  updateById,
  deleteById
}