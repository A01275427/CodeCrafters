const express = require('express');
const router = express.Router();

router.get('/registrarPago', (request, response, next) => {
    response.render('registrarPago');
})

module.exports = router;
