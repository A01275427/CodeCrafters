const database = require('../util/database');

exports.descargarHistorialPagos = async (req, res) => {
    const idAlumno = req.params.idAlumno;

    try {
        const pagos = await database.obtenerPagosPorAlumno(idAlumno);
        let csvString = 'Fecha,Monto,Método,Nota\n'; // Asumiendo estos campos

        pagos.forEach(pago => {
            csvString += `${pago.fecha},${pago.monto},${pago.metodo},${pago.nota}\n`;
        });

        res.setHeader('Content-Type', 'text/csv');
        res.setHeader('Content-Disposition', 'attachment; filename=historial_pagos.csv');
        res.send(csvString);
    } catch (err) {
        res.status(500).send('Error al descargar el historial de pagos');
    }
};
