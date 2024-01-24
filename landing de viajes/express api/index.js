
const express = require('express');
const registrosRoutes = require('./registros');


const app = express();
const PORT = process.env.PORT || 3000;


app.use('/registros', registrosRoutes);


app.listen(PORT, () => {
  console.log(`Servidor escuchando en el puerto ${PORT}`);
});