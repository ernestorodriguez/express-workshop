const userService = require('../../../services/userService');

const getUser = (req, res, next) => {
    const userId = req.params.id;
    userService.getById(userId).then((result) => {
        const user = result.shift();
        if(user) {
            res.status(200).json(user);
        } else {
            res.status(404).json({status: 404, message: 'user not found'});
        }
    }).catch((error) => next(error));
}

module.exports = {
    getUser
}