%Carlos Andres Delgado Saavedra 1301662
%Jose Heriberto Torres 1600701
declare

%Esta funcion crea un objeto activo
fun {CrearObjActivo Clase Inic}
   Obj={New Clase Inic}
   P
in
   thread S in
      {NewPort S P}
      for M in S do {Obj M} end
   end
   proc {$ M} {Send P M} end
end


%Clase semaforo
class Semaforo
   %Los atributos son
   %estado indica estado del semaforo
   %nombre es el nombre del semaforo
   %sincronizado indica el nombre del semaforo sincronizado
   attr estado sucesor nombre sincronizado

   %Estado inicial
   meth inic(Nombre Suc Analogo)
      nombre := Nombre
      sucesor := Suc
      sincronizado := Analogo
   end

   %Recibo el control y se lo paso a mi sucesor
   meth control

      %Ejecuto la secuencia de mi analogo
      thread {@sincronizado secuencia} end

      %Ejecuto mi secuencia
      {self secuencia}
 
      %Le paso el control a mi sucesor
      {Browse 'paso control'}
      {@sucesor control}
   end

   meth secuencia
      estado := 'rojoAmarillo'
      {Browse @nombre#@estado}
      %Espero 5 segundos
      {Delay 5000}
      estado := 'verde'
      {Browse @nombre#@estado}
      %Espero 20 segundos
      {Delay 5000}
      estado := 'rojo'
      {Browse @nombre#@estado}
   end
   
   meth getEstado(Valor)
      Valor = @estado
   end
end
%Clase para los semaforos con flecha, es un semeforo pero con más cosas
class SemaforoConFlecha from Semaforo
%En este cambia la secuencia, no más
   meth secuencia
      
      estado := 'rojoYFlechaVerde'
      {Browse @nombre#@estado}
      %Espero 20 segundos
      {Delay 5000}
      estado := 'rojoYFlechaAmarilloRojo'
      {Browse @nombre#@estado}
      %Espero 5 segundos
      {Delay 5000}
      estado := 'verdeYFlechaRojo'
      {Browse @nombre#@estado}
      %Espero 20 segundos
      {Delay 5000}
      estado := 'amarilloRojoYFlechaRojo'
      {Browse @nombre#@estado}
      %Espero 5 segundos
      {Delay 5000}
      estado := 'rojoYFlechaVerde'
      {Browse @nombre#@estado}      
      
   end
end

%Clase sensor
class Sensor
   attr hayCarros

   meth inic
      hayCarros := false
   end

   meth consultar(Calle)
      hayCarros := true
   end
end


%Funciones para generar vehiculos automaticamente, estos van a las calles y hacen cola
proc{GenerarVehiculosTipo1 Puerto}
   local
      Numero = {OS.rand} mod 2
      X
   in
      if Numero == 0 then
	 X = derecho
      else
	 X = volteader
      end
         %Se produce un delay entre 0 y 5 segundos
      {Send Puerto X} 
      {Delay {OS.rand} mod 5000}
      {GenerarVehiculosTipo1 Puerto}
   end
end


%fun{GenerarVehiculosTipo2}
  
%end

%Programa
local
   %Generamos secuencia de Semaforos
   SemaforoA1 = {CrearObjActivo Semaforo inic('A1' SemaforoBI1 SemaforoA2)}
   SemaforoA2 = {CrearObjActivo Semaforo inic('A2' SemaforoBI2 SemaforoA1)}
   
   SemaforoBI1 = {CrearObjActivo SemaforoConFlecha inic('BI1' SemaforoBD1 SemaforoBI2)}
   SemaforoBD1 = {CrearObjActivo Semaforo inic('BD1' SemaforoA2 SemaforoBD2)}
   
   SemaforoBI2 = {CrearObjActivo SemaforoConFlecha inic('BI2' SemaforoBD2 SemaforoBI1)}
   SemaforoBD2 = {CrearObjActivo Semaforo inic('BD2' SemaforoA1 SemaforoBD1)} 
   
in
   %Logicamente el control inicia con el semaforo BI1 debido a que este tiene la flecha verde
   {SemaforoBI1 control}
end  