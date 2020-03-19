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

const getJoinsQuery = (table, joins) => {
  let result = ''
  if(joins.length) {
    const parseJoins = joins.map((join) => {
      return `JOIN ${join.table} ON ${table}.${join.key} = ${join.table}.${join.keyTarget}`
    });
    result = `${parseJoins.join(', ')}`
  }
  return result;
}

const getKeys = (keys, replacements = []) => {
  let result = keys ? keys.join(', ') : '*';
  Object.keys(replacements).map((key) => {
    result = result.replace(key, `${key} AS ${replacements[key]}`)
  })
  return result;
}

const get = ({ table, keys, replacements, joins = [] }, { start,  end}) => {
  let query =`SELECT ${getKeys(keys, replacements)} FROM ${table} ${getJoinsQuery(table, joins)}`;
  if (start != undefined) {
    query += ` LIMIT ${start}`;
    if (end) {
      query += `, ${end}`;
    }
  }
  return sequelize.query(query, {
    type:sequelize.QueryTypes.SELECT
  });
}

const getById = ({ table, keys, replacements, joins }, id) => {
  const query = `SELECT ${getKeys(keys, replacements)} FROM ${table} ${getJoinsQuery(table, joins)} WHERE ${table}.id = ${id}`;
  return sequelize.query(query, {
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