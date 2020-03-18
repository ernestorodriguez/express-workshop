const { Router } = require('express');
const controller = require('./controller');
const renderer = require('../../components/htmlRenderer')
const router = Router();


router.get('/', (req, res) => {
    const mockDAta = {
        books: [
            {
                "id": 100,
                "author": 'Jonh Smith',
                "title": "The Space Trilogy",
                "description": "Philologist Edwin Ransom travels to Mars and Venus, and makes a series of dramatic discoveries about Earth's place in the solar system – and the nature of a threat it unwittingly faces.",
                "yearPublication": 2020
            }
        ]
    }
    res.send(renderer(controller(mockDAta)))
})

module.exports = router;