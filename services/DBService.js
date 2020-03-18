const db = require('./bookStoreDataBaseConection');

const prepareQuery = (rawdata) => {
    const queryString = Object.keys(rawdata).reduce((query, key) => {
        const property = `${key} = "${rawdata[key]}"`;
        query.push(property);
        return query;
    },[]);
    return queryString.join(',')
}

class DBService {
    constructor({ table }) {
        this.table = table;
    }

    get(pagination = {}) {
        return db.get(this.table, pagination.start, pagination.end);
    }

    getById(id) {
        return db.getById(this.table, id);
    }

    add(rawdata) {
        const query = {
            colunms: Object.keys(rawdata).join(','),
            values: Object.values(rawdata).map((value) => `"${value}"`).join(',')
        }
         
        return db.insertInto(this.table, query);
    }

    patch(id, rawdata) {
        const query = prepareQuery(rawdata);
        return db.updateById(this.table, id, query);
    }

    delete(id) {
        return db.deleteById(this.table, id);
    }
}


module.exports = DBService;