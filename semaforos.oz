declare

%Clase semaforo
class SemaForo
   attr estado  sucesor

   meth inic
      estado := 'rojo'
   end

   meth setSucesor(Suc)
      sucesor := Suc
   end

   meth getEstado(Valor)
      Valor = @estado
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
local
   %Inicializamos las calles, las cuales son puertos
   Flujo1
   CalleA1 = {NewPort Flujo1}
   %CalleA2 =  {NewPort calleA2}
   %CalleB1I =  {NewPort calleB1I}
   %CalleB1D =  {NewPort calleB1D}
   %CalleB2I =  {NewPort calleB2I}
   %CalleB2D =  {NewPort calleB2D}
in
   %Mandamos el flujo a al calle A1{
   {Browse 1}
   thread {GenerarVehiculosTipo1 CalleA1} end
   {Browse Flujo1}
end  