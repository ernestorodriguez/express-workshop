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

const updateUser = (req, res, next) => {
    const userId = req.params.id;
    userService.patch(userId, req.body).then((result) => {
        const updateData = result.pop();
        if(updateData) {
            res.status(200).json('user actualizado');
        } else {
            res.status(404).json({status: 404, message: 'ninguna data fue actualizada'});
        }
    }).catch((error) => next(error));
}

const addUser = (req, res, next) => {
    userService.add(req.body).then((result) => {
        const userId = result.shift();
        if(userId) {
            res.status(200).json({ user_id: userId });
        } else {
            res.status(500).json({status: 404, message: 'no se pudo añadir el usuario'});
        }
    }).catch((error) => next(error));
}

const removeUser = (req, res, next) => {
    const userId = req.params.id;
    userService.delete(userId).then((result) => {
            res.status(200).json('user borrado');
    }).catch((error) => next(error));
}

module.exports = {
    getUser,
    updateUser,
    addUser,
    removeUser,
}