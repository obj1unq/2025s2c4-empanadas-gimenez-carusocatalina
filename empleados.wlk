
object gimenez {
    var fondo = 300000
 
    method pagarSueldo(empleado) {
       fondo = fondo - empleado.sueldo()
       empleado.cobrarSueldo()
    }
    method fondo() = fondo
}

object galvan {
    var dinero = 0
    var deuda = 0
    var sueldoFijo = 15000
    
    method sueldo(valorDeCambio) {
        sueldoFijo = valorDeCambio
    }
    
    method sueldo() = sueldoFijo
    method deuda() = deuda 
    method dinero() = dinero

    method gastar(cuanto) {
        if (cuanto >= dinero) {
            deuda = deuda + (cuanto - dinero)
            dinero = 0
        }
            else {
              dinero = dinero - cuanto
            }
    }
    method cobrarSueldo() {
        if (deuda >= self.sueldo()) { 
                deuda = deuda - sueldoFijo
        }
            else {
                dinero =+ (sueldoFijo - deuda)
                deuda = 0 
            }
    }
}
object baigorria {
    var totalCobrado = 0
    var empanadasVendidas = 0
    method vender(cantidad) {
        empanadasVendidas = empanadasVendidas + cantidad
    } 
    method empanadasVendidas() = empanadasVendidas
    method sueldo() = empanadasVendidas*15

    method totalCobrado() = totalCobrado
    method cobrarSueldo() {
        totalCobrado =+ self.sueldo()
    } 
    method yaCobro() {
        // no se, quiero un booleano pero no se a que comprarlo
    }
}
