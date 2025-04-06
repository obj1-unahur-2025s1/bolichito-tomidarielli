//COLORES
object rojo {
  method esFuerte() = true
}

object verde {
  method esFuerte() = true
}

object naranja {
  method esFuerte() = true
}

object celeste {
  method esFuerte() = false
}

object pardo {
  method esFuerte() = false
} //MATERIALES

object cobre {
  method esBrillante() = true
}

object vidrio {
  method esBrillante() = true
}

object lino {
  method esBrillante() = false
}

object cuero {
  method esBrillante() = false
}

object madera {
  method esBrillante() = false
} //COSAS

object remera {
  method color() = rojo
  
  method material() = lino
  
  method peso() = 800
}

object pelota {
  method color() = pardo
  
  method material() = cuero
  
  method peso() = 1300
}

object biblioteca {
  method color() = verde
  
  method material() = madera
  
  method peso() = 8000
}

object muñeco {
  method color() = celeste
  
  method material() = vidrio
  
  method peso(gramos) = gramos
}

object placa {
  method color(color) = color
  
  method material() = cobre
  
  method peso(peso) = peso
}

object arito {
  method color() = celeste
  
  method material() = cobre
  
  method peso() = 180
}

object banquito {
  method color() = naranja
  
  method material() = madera
  
  method peso() = 1700
}

object cajita {
  var objeto = placa
  
  method color() = rojo
  
  method material() = cobre
  
  method setObjeto(cosa) {
    objeto = cosa
  }
  
  method peso() = 400 + objeto.peso()
}