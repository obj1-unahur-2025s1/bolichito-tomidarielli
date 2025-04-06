import objetos.*
import personas.*

object bolichito {
  //VARIABLES
  var objetoVidriera = null
  var objetoMostrador = null //SETEAR
  
  method setVidriera(cosa) {
    objetoVidriera = cosa
  }
  
  method setMostrador(cosa) {
    objetoMostrador = cosa
  }
  
  method esBrillante() = objetoVidriera.material().esBrillante() and objetoMostrador.material().esBrillante()
  
  method esMonocromatico() = objetoVidriera.color() == objetoMostrador.color()
  
  method estaEquilibrado() = objetoMostrador.peso() > objetoVidriera.peso()
  
  method hayDeColor(
    color
  ) = (objetoMostrador.color() == color) or (objetoVidriera.color() == color)
  
  method puedeMejorar() = self.esMonocromatico() or (not self.estaEquilibrado())
  
  method puedeOfrecerleAlgoA(unaPersona) = unaPersona.leGusta(
    objetoMostrador
  ) or unaPersona.leGusta(objetoVidriera)
}