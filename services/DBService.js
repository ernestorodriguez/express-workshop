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
    constructor({ table, joins, replacements, keys }) {
        this.table = table;
        this.joins = joins;
        this.keys = keys;
        this.replacements = replacements;
    }

    get(pagination = {}) {
        return db.get(this, pagination);
    }

    getById(id) {
        return db.getById(this, id);
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