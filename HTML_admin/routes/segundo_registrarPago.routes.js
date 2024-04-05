const express = require('express');
const router = express.Router();

router.get('/registrarPago', (request, response, next) => {
    response.render('registrarPago');
})

module.exports = router;

router.post('/registrarPago', (request, response, next) => {
    // Extracción de los datos del formulario del cuerpo de la solicitud
    const { IDUsuario, IDDeuda, Cant_pagada, Fecha_de_pago, Metodo, Banco, Nota, Prorroga } = request.body;
    // Conectar a la base de datos y ejecutar la consulta de inserción
    const db = require('../util/database');
    db.execute('INSERT INTO Pago (IDUsuario, IDDeuda, Cant_pagada, Fecha_de_pago, Metodo, Banco, Nota, Prorroga) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
        [IDUsuario, IDDeuda, Cant_pagada, Fecha_de_pago, Metodo, Banco, Nota, Prorroga])
        .then(() => {
            // Envía una respuesta de éxito
            response.send('Pago registrado con éxito.');
        })
        .catch(err => {
            console.log(err);
            // Envía una respuesta de error
            response.status(500).send('Error al registrar el pago.');
        });
});

module.exports = router;
