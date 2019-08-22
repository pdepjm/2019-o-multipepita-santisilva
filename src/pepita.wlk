object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz(){
		return energia.between(500,1000) 
	}
	
	method vueloExtra1(){
		if(energia.between(200,400)){
			return 10
		}
	return 0
	}
	
	method vueloExtra2(){
		if(energia % 20 == 0){
			return 15
		}
		return 0
	}
	
	method cuantoQuiereVolar(){
		var vuelaDeBase = energia/5
		var vuelaExtra = self.vueloExtra1() + self.vueloExtra2()
		return vuelaDeBase + vuelaExtra
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}

}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object mijo{
	var mojado = false
	
	method energiaQueOtorga(){
		if(mojado){
			return 15
		}
		return 20
	}
	method mojarse(){
		mojado = true
	}
	method secarse(){
		mojado = false
	}
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}