const { Router } = require('express');
const users = require('./routers/users');
const books = require('./routers/books');
const router = Router();

router.use('/users', users);
router.use('/books', books);

router.use((error,req, res, next) => {
    if(error) {
        res.status(500).json(error);
    }
});

router.use((req, res, next) => {
    res.status(404).json('not found');
});

module.exports = router;