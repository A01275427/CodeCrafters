const db = require('../util/database');
const bcrypt = require('bcryptjs');

module.exports = class Usuario {

    constructor(mi_username, mi_password){
        this.username = mi_username;
        this.password = mi_password;
    }

    save() {
        console.log(this.username);
        console.log(this.password);
        return bcrypt.hash(this.password, 12).then((password_cifrado) => {
            return db.execute(
                'INSERT INTO Usuario (Nombre, Matricula, Correo_electronico, Contrasena, Beca_actual, Referencia) VALUES (?, ?, ?, ?, ? , ?)',
                [this.username, password_cifrado]
            );
        })
        .catch((error) => {
            console.log(error);
            throw Error('Nombre de usuario ya en uso.')
        })
    }

    static fetchOne(username, password) {
        return db.execute(
            'SELECT * FROM Usuario WHERE username=?',
            [username]
        );
    }

}