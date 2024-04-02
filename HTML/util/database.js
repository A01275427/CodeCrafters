const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    database: 'viadiseno',
    password: '',
    port: 4306,
});

module.exports = pool.promise();