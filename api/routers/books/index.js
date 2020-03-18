const { Router } = require('express');
const { getBookByID, getBooks, updateBook, addBook, removeBook  } = require('../middlewares/book')

const router = Router();

router.get('/', getBooks);
router.get('/:id', getBookByID);
router.patch('/:id', updateBook);
router.post('/', addBook);
router.delete('/:id', removeBook);

module.exports = router;
