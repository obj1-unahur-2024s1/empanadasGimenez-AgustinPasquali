object galvan {
	var property salario = 150000
	var property totalDinero = 0
	var property totalDeuda = 0
	
	
	
	
	method comision(){}
	method gastar(cuanto){
		if (totalDinero < 1){
			totalDeuda += cuanto
		}else{
			if (totalDinero >= cuanto){				
				totalDinero -= cuanto
			}else{
				totalDinero -= 0.max(cuanto)
				totalDeuda += cuanto - totalDinero
			}
		}
		
	}
	method cobrarSueldo(){
			totalDinero = 0.max(self.salario()-totalDeuda) 
			totalDeuda = 0.max(totalDeuda - self.salario())	
	}
	
	

}

object baigorria{
	var empanadasVendidas = 0
	var property comision = 150
	var property totalCobrado = 0
	
	method salario()= empanadasVendidas * 150
	method venderEmpanada(){
		empanadasVendidas += 1
	}
	method cobrarSueldo(){
		totalCobrado += self.salario()
		empanadasVendidas = 0
	}	
}

object gimenez{
	var capital = 3000000
	method pagarSueldo(empleado){
		capital -= 0.max(empleado.salario())
		empleado.cobrarSueldo()
	}
	
}