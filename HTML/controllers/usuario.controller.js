const Usuario = require('../models/usuario.model');
const bcrypt = require ('bcryptjs');

exports.get_login = (request, response, next) => {
    const error = request.session.error || '';
    request.session.error = '';
    response.render('login', {
        correo: request.session.correo || '',
        registrar: false,
        error: error,
        csrfToken: request.csrfToken(),
    });
};

exports.get_home = (request, response, next) => {
    Usuario.fetch(request.params.correo)
    .then(([users, fieldData]) => {
        response.render('includes/sidebar', {
            usuariosDB: users,
            correo: request.session.correo || '',
        });
    })
    .catch(error => {
        console.log(error)
    })
}

exports.post_login = (request, response, next) => {
    Usuario.fetchOne(request.body.correo)
    .then(([users, fieldData]) => {
        if(users.length == 1) {
            const user = users[0];
            bcrypt.compare(request.body.password, user.Contrasena)
            .then(doMatch => {
                if (doMatch) {
                    request.session.isLoggedIn = true;
                    request.session.correo = user.correo;
                    return request.session.save(err => {
                        response.redirect('/');
                    });
                } else {
                    request.session.error = 'El usuario y/o contraseña son incorrectos.';
                    return response.redirect('/user/login')
                }
            })
            .catch((error) => {
                console.log(user.Contrasena);
                console.log(request.body.password);
                console.log(error);
            })
        }
    })
}

exports.get_logout = (request, response, next) => {
    request.session.destroy(() => {
        response.redirect('/user/login');
    });

}

exports.get_signup = (request, response, next) => {
    const error = request.session.error || '';
    request.session.error = '';
    response.render('login', {
        correo: request.session.correo || '',
        registrar: true,
        error: error,
        csrfToken: request.csrfToken(),

    })
}

exports.post_signup = (request, response, next) => {
    const nuevo_usuario = new Usuario(request.body.correo, request.body.nombre, request.body.matricula, request.body.beca, request.body.ref ,request.body.password, );
    nuevo_usuario.save()
    .then(([rows, fieldData]) => {
        response.redirect('/user/login');
    })
    .catch((error) => {
        console.log(error);
        request.session.error = 'Nombre de usuario inválido.';
        response.redirect('/user/signup');
    })
}


exports.getHistorialPago = async (req, res, next) => {
    // Aquí asumimos que tienes un modelo Pago que puede recuperar todos los pagos o los de un usuario específico
    // Deberás ajustar esto para que coincida con tu lógica de modelos y base de datos actual
    try {
        const [pagos, fieldData] = await Pago.fetchAll(); // Método ficticio, reemplaza con el tuyo
        res.render('historialPago', {
            pageTitle: 'Historial de Pagos',
            payments: pagos,
            userID: req.session.userID // Asegúrate de que esta variable se establece cuando el usuario inicia sesión
        });
    } catch (error) {
        console.log(error);
        res.redirect('/');
    }
};

exports.descargarPDF = async (req, res, next) => {
    const userID = req.params.id;
    try {
        const [pagos, fieldData] = await Pago.fetchByUserID(userID); // Método ficticio, reemplaza con el tuyo
        const doc = new PDFDocument();

        res.setHeader('Content-Disposition', `attachment; filename="historial-${userID}.pdf"`);
        res.setHeader('Content-Type', 'application/pdf');

        doc.pipe(res);
        
        doc.text(`Historial de Pagos para Usuario ID: ${userID}`, {
            underline: true,
            align: 'center'
        });

        doc.moveDown();
        pagos.forEach(pago => {
            doc.text(`ID Pago: ${pago.IDPago} - Cantidad: $${pago.Cant_pagada.toFixed(2)} - Fecha: ${pago.Fecha_de_pago.toLocaleDateString()} - Método: ${pago.Metodo}`);
            doc.moveDown();
        });

        doc.end();
    } catch (error) {
        console.log(error);
        res.redirect('/');
    }
};
