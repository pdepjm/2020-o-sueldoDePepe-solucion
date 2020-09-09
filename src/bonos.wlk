// Formas que tiene un objeto de conocer a otro
// 1) globalmente 	-> hardcodeado :(
// 2) atributo 		-> lo conoce siempre
// 3) parámetro		-> lo conoce solo durante el método
// ó pedirselo a otro objeto que conoce a partir de las otras 3

// RESULTADOS
object porcentaje {

	method montoResultados(empleado) = empleado.sueldoNeto() * 0.1

}

// El método lookup (que determina qué método responde a qué mensaje)
// tiene en cuenta el nombre + cantidad de parámetros
object montoFijo {

	method montoResultados(empleado) = 800

}

// PRESENTISMO
object normal {

	method montoPresentismo(empleado) =
		if (empleado.noFaltoNunca()) {
			2000
		} else if (empleado.faltas() == 1) {
			1000
		} else {
			0
		}

}

object ajuste {

	method montoPresentismo(empleado) =
		if (empleado.noFaltoNunca()) {
			100
		} else {
			0
		}

}

object demagogico {

	method montoPresentismo(empleado) =
		if (empleado.sueldoNeto() < 18000) {
			500
		} else {
			300
		}

}

// Este objeto forma parte de ambos polimorfismos
object nulo {

	method montoResultados(empleado) = 0

	method montoPresentismo(empleado) = 0

}

