const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost', 
    user: 'root', 
    database: 'viadisenio',
<<<<<<< HEAD
    password: '',
    port: 3306,
=======
    password: ' ',
    port: 4306,
>>>>>>> 904f08652d3592610b9353c0b9ca7f14818e45d0
});

module.exports = pool.promise();