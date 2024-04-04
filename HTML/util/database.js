const mysql = require('mysql2');
const util = require('util');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    database: 'viadisenio',
    password: '',
    port: 3306,
});

const poolPromise = pool.promise();

poolPromise.obtenerPagosPorAlumno = (idAlumno) => {
    const query = 'SELECT fecha, monto, metodo, nota FROM pagos WHERE id_alumno = ?';
    return poolPromise.query(query, [idAlumno]);
};

module.exports = poolPromise;
