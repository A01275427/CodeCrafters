// Suponiendo que tienes un archivo de rutas así:
// routes/pagos.js
const express = require('express');
const router = express.Router();
const db = require('../util/database');

router.get('/pagos', (req, res, next) => {
  db.execute('SELECT * FROM pagos')
    .then(([rows, fieldData]) => {
      res.json(rows);
    })
    .catch(err => {
      console.log(err);
      res.status(500).json({ error: err });
    });
});

module.exports = router;
