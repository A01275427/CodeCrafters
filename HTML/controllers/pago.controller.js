const Pago = require('../models/pago.model');
const PDFDocument = require('pdfkit');

exports.descargarHistorialPagos = async (req, res) => {
  try {
    const pagos = await Pago.findAll();

    const doc = new PDFDocument();
    res.setHeader('Content-Type', 'application/pdf');
    res.setHeader('Content-Disposition', 'attachment; filename=historial_pagos.pdf');
    
    doc.pipe(res);

    pagos.forEach(pago => {
      doc
        .fontSize(12)
        .text(`Pago ID: ${pago.id} - Monto: ${pago.monto}`, {
          width: 410,
          align: 'left'
        });
    });

    doc.end();
  } catch (error) {
    res.status(500).send('Error en el servidor al descargar el historial de pagos.');
  }
};
