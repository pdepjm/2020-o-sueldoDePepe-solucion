// REQUERIMIENTOS
// - Calcular el sueldo
import categorias.*
import bonos.*

object pepe {

	var categoria = gerente
	var bonoResultados = nulo
	var bonoPresentismo = nulo
	var faltas = 0

	method sueldo() = 
		self.sueldoNeto() + self.sueldoPorResultados() + self.sueldoPorPresentismo()

	method sueldoNeto() = categoria.neto()
	
	method sueldoPorResultados() = 
		bonoResultados.montoResultados(self)

	method sueldoPorPresentismo() = 
		bonoPresentismo.montoPresentismo(self)

	method noFaltoNunca() = faltas == 0
	
	method categoria(nuevaCategoria) {
		categoria = nuevaCategoria
	}
	method bonoResultados(nuevoBono) {
		bonoResultados = nuevoBono
	}
	method bonoPresentismo(nuevoBono) {
		bonoPresentismo = nuevoBono
	}
	method faltar(dias) {
		faltas += dias
	}
	method faltas() = faltas

}


