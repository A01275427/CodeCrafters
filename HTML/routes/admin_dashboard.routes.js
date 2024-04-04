const express = require('express');
const router = express.Router();
const isAuth = require('../util/is-auth');

router.get('/admin_dashboard', (request, response, next) => {
    response.render('admin_dashboard');
})

module.exports = router;