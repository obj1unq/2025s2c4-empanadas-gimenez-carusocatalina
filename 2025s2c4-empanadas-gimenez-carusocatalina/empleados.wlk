
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
    var sueldoFijo = 15000
    
    method sueldo(valorDeCambio) {
        sueldoFijo = valorDeCambio
    }
    
    method sueldo() = sueldoFijo

    method deuda() {
        return if (self.saldo() < 0) {
            self.saldo()*(-1)
        }
            else { 0 }
    }

    method saldo() = dinero
    
    method dinero() {
        return if (self.saldo()>0){
            self.saldo()
        }
            else { 0 }
    }

    method gastar(cuanto) {
        dinero -= cuanto 
    }
    method cobrarSueldo() {
        dinero += self.sueldo() 
    }
}
object baigorria {
    var totalCobrado = 0
    var empanadasVendidas = 0
    var property gananciaEmpanada = 15

    method vender(cantidad) {
        empanadasVendidas = empanadasVendidas + cantidad
    } 
    method empanadasVendidas() = empanadasVendidas
    method sueldo() = empanadasVendidas*self.gananciaEmpanada()

    method totalCobrado() = totalCobrado
    method cobrarSueldo() {
        totalCobrado += self.sueldo()
        empanadasVendidas = 0
    } 
}
