const { Router } = require('express');
const { getUser, updateUser, addUser, removeUser  } = require('../middlewares/user')
const router = Router();

router.get('/:id', getUser);
router.patch('/:id', updateUser);
router.post('/', addUser);
router.delete('/:id', removeUser);

module.exports = router;