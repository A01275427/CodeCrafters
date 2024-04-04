const mysql = require('mysql2');
const util = require('util');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    database: 'viadisenio',
    password: '',
    port: 4306,
});

pool.query = util.promisify(pool.query);

exports.obtenerPagosPorAlumno = (idAlumno) => {
    const query = 'SELECT fecha, monto, metodo, nota FROM pagos WHERE id_alumno = ?';
    return pool.query(query, [idAlumno]);
};

module.exports = pool.promise();