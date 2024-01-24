
const express = require('express');
const db = require('./db'); 

  


const router = express.Router();



router.get('/registros', async (req, res) => {
  try {
    const [rows] = await db.query('SELECT * FROM registros1');
    res.json(rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = router;