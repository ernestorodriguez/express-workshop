const { Router } = require('express');
const router = Router();
const search = require('./pages/listing')


router.use('/login', (req,res) => {
    res.send('page');
});

router.use('/', search);

router.use((error,req, res, next) => {
    if(error) {
        console.log(error)
        res.status(500).send(JSON.stringify(error));
    }
});

router.use((req, res, next) => {
    res.status(404).send('not found');
});

module.exports = router;