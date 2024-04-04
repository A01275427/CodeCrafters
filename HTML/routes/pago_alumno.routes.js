const express = require('express');
const router = express.Router();
const isAuth = require('../util/is-auth');
const pagoController = require('../controllers/pago_alumno.controller');


router.get('/pago', isAuth, (request, response, next) => {
    response.render('pago_alumno');
})

router.get('/descHistorial/:idAlumno', pagoController.descargarHistorialPagos);

module.exports = router;