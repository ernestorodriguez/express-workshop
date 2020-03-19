const booksService = require('../../services/booksService');

const getBooks = (req, res, next) => {
    booksService.get({start: 0, end: 9}).then((books) => {
        res.locals.books = books;
        next();
    }).catch((error) => next(error));
}

module.exports = {
    getBooks,
}