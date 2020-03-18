const booksService = require('../../../services/booksService');

const getBooks = (req, res, next) => {
    booksService.get().then((result) => {
        const books = result;
        if(books.length) {
            res.status(200).json(books);
        } else {
            res.status(404).json({status: 404, message: 'Books Not Found'});
        }
    }).catch((error) => next(error));
}

const getBookByID = (req, res, next) => {
    const userId = req.params.id;
    booksService.getById(userId).then((result) => {
        const user = result.shift();
        if(user) {
            res.status(200).json(user);
        } else {
            res.status(404).json({status: 404, message: 'Book Not Found'});
        }
    }).catch((error) => next(error));
}

const updateBook = (req, res, next) => {
    const userId = req.params.id;
    booksService.patch(userId, req.body).then((result) => {
        const updateData = result.pop();
        if(updateData) {
            res.status(200).json('book updated');
        } else {
            res.status(404).json({status: 404, message: 'no date was updated'});
        }
    }).catch((error) => next(error));
}

const addBook = (req, res, next) => {
    booksService.add(req.body).then((result) => {
        const bookId = result.shift();
        if(bookId) {
            res.status(200).json({ book_id: bookId });
        } else {
            res.status(500).json({status: 500, message: 'Book can not be added'});
        }
    }).catch((error) => next(error));
}

const removeBook = (req, res, next) => {
    const userId = req.params.id;
    booksService.delete(userId).then((result) => {
            res.status(200).json('book delete');
    }).catch((error) => next(error));
}

module.exports = {
    getBooks,
    getBookByID,
    updateBook,
    addBook,
    removeBook,
}