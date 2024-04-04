const db = require('../util/database');

class Pago {
    constructor(idPago, idUsuario, idDeuda, cantPagada, fechaDePago, metodo, banco, nota) {
        this.idPago = idPago;
        this.idUsuario = idUsuario;
        this.idDeuda = idDeuda;
        this.cantPagada = cantPagada;
        this.fechaDePago = fechaDePago;
        this.metodo = metodo;
        this.banco = banco;
        this.nota = nota;
    }
	}

    // Guardar un nuevo pago en la base de datos
    save() {
        return db.execute('INSERT INTO pagos (...) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)',
        [this.matriculaAlumno, this.monto, this.referencia, this.concepto, this.banco, this.fechaPago, this.porcentaje, this.mes, this.nota]);
    }

    // Recuperar todos los pagos de la base de datos
    static fetchAll() {
        return db.execute('SELECT * FROM pagos');
    }
}

module.exports = Pago;

