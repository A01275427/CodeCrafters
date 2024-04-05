// models/pagoModel.js
const { Model, DataTypes } = require('sequelize');
const sequelize = require('../util/database'); // Asegúrate de ajustar el camino relativo según tu estructura de proyecto

class Pago extends Model {}

Pago.init({
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  monto: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false
  },
  // Agrega aquí más campos según necesites
}, {
  sequelize,
  modelName: 'Pago',
  tableName: 'pagos',
  timestamps: false // Omitir si tu tabla no usa campos 'createdAt' y 'updatedAt'
});

module.exports = Pago;
