const express = require('express');
const router = express.Router();

const pagoController = require('../controllers/pagoController');

router.get('/registrarPago', pagoController.getRegistrarPago);

router.post('/registrarPago', pagoController.postRegistrarPago);

router.get('/listaPagos', pagoController.getPagos);

module.exports = router;

