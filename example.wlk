class Nave {
  var velocidad = 0
  var direccion
  method velocidad () = velocidad
  method direccion () = direccion
  method acelerar (cuanto) {
    velocidad = (velocidad + cuanto).min(100000) 
  } 
  method desacelerar (cuanto) {
    velocidad = (velocidad - cuanto).max(0) 
  } 
  method irHaciaElSol () {
    direccion = 10
  }
  method escaparDelSol () {
    direccion = -10
  }
  method ponerseParaleloAlSol () {
    direccion = 0
  }
  method acercarseUnPocoAlSol () {
    direccion  = (direccion+1).min(10)
  }
  method alejarseUnPocoDelSol () {
    direccion = (direccion-1).max(-10)
  }
  method prepararViaje ()
}

class NaveBaliza inherits Nave{
  var colorBaliza = "azul"
  method cambiarColorDeBaliza (colorNuevo) {
    colorBaliza = colorNuevo
  }
  override method prepararViaje () {
    colorBaliza = "verde"
    self.ponerseParaleloAlSol()
  }
}

class navePasajeros inherits Nave{
  var pasajeros = 0
  var racionesComida = 0
  var racionesBebida = 0
  method racionesComida () = racionesComida
  method racionesBebida () = racionesBebida
  method cargarRacionesComida (cantidad) {
    racionesComida = racionesComida+cantidad
  }
  method cargarRacionesBebida (cantidad) {
    racionesBebida = racionesBebida+cantidad
  }
  method descargarRacionesComida (cantidad) {
    racionesComida = racionesComida-cantidad
  }
  method descargarRacionesBebida (cantidad) {
    racionesBebida = racionesBebida-cantidad
  }
  override method prepararViaje () {
    self.cargarRacionesComida(pasajeros*4)
    self.cargarRacionesBebida(pasajeros*6)
    self.acercarseUnPocoAlSol()
  }
}

class NaveCombate inherits Nave {
  var estaVisible = false
  method estaInvisible () {
    return not (estaVisible)
  }
  method ponerseVisible () {
    estaVisible = true
  }
  method ponerseInvisible () {
    estaVisible = false
  }
}


