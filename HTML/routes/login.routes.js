const express = require('express');
const router = express.Router();

router.get('/login', (request, response, next) => {
    response.render('login');
})

module.exports = router;