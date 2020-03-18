const { Router } = require('express');
const router = Router();


router.get('/:id', (req, res) => {
    res.json('user data');
});
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