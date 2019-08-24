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
		
		method entre200y400(){
			if(energia.between(200,400)){
				return 10
			}
			return 0
		}
		
		method multiploDe20(){
			if(energia % 20 == 0){
				return 15
			}
			return 0
		}
		
		method cuantoQuiereVolar(){
			var vuelaDeBase = energia/5
			var vuelaExtra = self.entre200y400() + self.multiploDe20()
			return vuelaDeBase + vuelaExtra
		}
		
		method salirAComer(){
			self.vola(5)
			self.come(alpiste)
			self.vola(5)
		}
		method haceLoQueQuieras(){
			if(self.estaCansada()){
				self.come(alpiste)
			}
			if(self.estaFeliz()){
				self.vola(8)
			}
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
	
	object canelones{
		var queso = false
		var salsa = false
		var canelones = 20
		method energiaQueOtorga(){
			return canelones + self.tieneQueso() + self.tieneSalsa()
		}
		method sacarSalsa(){
			salsa= false
		}
		method sacarQueso(){
			queso= false
		}
		method ponerQueso(){
			queso= true
		}
		method ponerSalsa(){
			salsa= true
		}
		method tieneSalsa(){
			if(salsa){
				return 5
			} 
			return 0 
		}
		method tieneQueso(){
			if(queso){
				return 7
			}
			return 0
		}
	}
	object roque{
		method entrenar(ave){
			ave.vola(10)
			ave.come(alpiste)
			ave.vola(5)
			ave.haceLoQueQuieras()
		}
	}

