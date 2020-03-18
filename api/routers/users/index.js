const { Router } = require('express');
const { getUser } = require('../middlewares/user')
const router = Router();


router.get('/:id', getUser);

router.patch('/:id',  (req, res) => {
    res.json('user data updated');
});
router.post('/', (req, res) => {
    res.json('new user added');
});
router.delete('/:id', (req, res) => {
    res.json('user delete');
});

module.exports = router;