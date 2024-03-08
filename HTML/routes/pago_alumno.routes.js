const express = require('express');
const router = express.Router();

router.get('/pago', (request, response, next) => {
    response.render('pago_alumno');
})

module.exports = router;