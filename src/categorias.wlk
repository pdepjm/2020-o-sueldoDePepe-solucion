object gerente {

	method neto() = 15000

}

object cadete {

	method neto() = 20000

}

// BONUS
object vendedor {

	var muchasVentas = false

	method neto() = 16000 * self.multiplicadorPorVentas()

	method multiplicadorPorVentas() = if (muchasVentas) 1.5 else 1

	method activarAumentoPorMuchasVentas() {
		muchasVentas = true
	}

	method desactivarAumentoPorMuchasVentas() {
		muchasVentas = false
	}

}

object medioTiempo {

	var categoriaBase

	method neto() = categoriaBase.neto() / 2

	method categoriaBase(categoria) {
		categoriaBase = categoria
	}

}

