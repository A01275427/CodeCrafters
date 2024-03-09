const express = require('express');
const router = express.Router();

router.get('/historialPagos', (request, response, next) => {
    response.render('historialPagos');
})

module.exports = router;
