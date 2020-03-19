const DBService = require('./DBService')

class UserService extends DBService  {
    constructor() {
        super({ 
            table: 'libro', 
            joins: [
                {
                    table: 'autor',
                    key: 'id_autor',
                    keyTarget: 'id'
                }
            ],
            keys: [
                'libro.id', 
                'id_autor',
                'titulo',
                'descripcion',
                'autor.nombre',
                'anyo_publicacion'
            ],
            replacements: {
                'id_autor': 'idAuthor',
                'titulo': 'title',
                'descripcion' : 'description',
                'autor.nombre': 'author',
                "anyo_publicacion": 'publicationYear'
            }
        });
    }
}

module.exports = new UserService();