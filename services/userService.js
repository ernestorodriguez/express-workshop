const db = require('./dataBaseService')

class service  {
    static getById(id) {
        return db.getById('cliente', id);
    }
}

module.exports = service;