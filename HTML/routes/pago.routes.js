const express = require('express');
const router = express.Router();
const pagoController = require('../controllers/pago.controller');

router.get('/descargarpdf', pagoController.descargarHistorialPagos);

module.exports = router;
