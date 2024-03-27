const express = require('express');
const router = express.Router();
const isAuth = require('../util/is-auth');

router.get('/pago', isAuth, (request, response, next) => {
    response.render('pago_alumno');
})

module.exports = router;