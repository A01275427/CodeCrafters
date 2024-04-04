const express = require('express');
const app = express();

app.set('view engine', 'ejs');
app.set('views', 'views');

const path = require('path');

app.use(express.static(path.join(__dirname, 'public')));

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: false}));

app.use((request, response, next) => {
    console.log('Test');
    next();
});

const rutasRegistrarPago = require('./routes/registrarPago.routes'); 
const rutasDeuda = require('./routes/deuda.routes'); 
const rutasHistorialPagos = require('./routes/historialPagos.routes'); 

app.use('/user', rutasRegistrarPago);
app.use('/user', rutasDeuda);
app.use('/user', rutasHistorialPagos);

app.use((req, res, next) => {
    res.status(404).render('404', { pageTitle: 'Página No Encontrada' });
});

app.listen(2050);

