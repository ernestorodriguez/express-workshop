const { Router } = require('express');
const controller = require('./controller');
const renderer = require('../../components/htmlRenderer')
const router = Router();


router.get('/', (req, res) => {
    res.send(renderer(controller(res.locals)))
})

module.exports = router;