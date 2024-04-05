const express = require('express');
const router = express.Router();
const pagoController = require('../controllers/pago.controller');

router.get('/historial_pagos', pagoController.getPaymentHistory);
router.get('/user/descargar-historial', pagoController.downloadPaymentHistory);

module.exports = router;
