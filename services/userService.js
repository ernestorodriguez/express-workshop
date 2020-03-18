const DBService = require('./DBService')

class UserService extends DBService  {
    constructor() {
        super({ table: 'cliente' });
    }
    
    get() {
        return Promise.reject('no puede acceder al listado de usuarios')
    }
}

module.exports = new UserService();