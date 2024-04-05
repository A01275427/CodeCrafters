const express = require('express');
const router = express.Router();

router.get('/deuda', (request, response, next) => {
    response.render('deuda');
})

module.exports = router;
