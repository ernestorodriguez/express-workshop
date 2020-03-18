const DBService = require('./DBService')

class Service extends DBService  {
    constructor() {
        super({ table: 'libro' });
    }
}

module.exports = new Service();