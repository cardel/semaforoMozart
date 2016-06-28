%Carlos Andres Delgado Saavedra 1301662
%Jose Heriberto Torres 1600701
declare

%Parametros del proyecto

%CambioVerde a AmarilloRojo
VerdeAAmarilloRojo = 8000
TiempoSalidaCarros = {Int.'div' VerdeAAmarilloRojo 6}
%CambioAmarilloRojo a Rojo
AmarilloARojo = 4000

%GeneracionCarros
Generar = 20000

%Delay de salida
DelaySalida = 1000

[QTk]={Module.link ["x-oz://system/wp/QTk.ozf"]}


%Imagen de fondo
CD = {OS.getCWD}
Fondo={QTk.newImage photo(file:CD#'/fondo.gif' height:433 width:658)}

%Carros
CarroCalleA1={QTk.newImage photo(file:CD#'/carrovista4.gif' height:25 width:50)}
CarroCalleA2={QTk.newImage photo(file:CD#'/carrovista1.gif' height:25 width:50)}
CarroCalleBI1={QTk.newImage photo(file:CD#'/carrovista3.gif' height:50 width:25)}
CarroCalleBI2={QTk.newImage photo(file:CD#'/carrovista2.gif' height:50 width:25)}
CarroCalleBD1={QTk.newImage photo(file:CD#'/carrovista3.gif' height:50 width:25)}
CarroCalleBD2={QTk.newImage photo(file:CD#'/carrovista2.gif' height:50 width:25)}

Boton = button(text:"Iniciar"
	       action:proc{$} {IniciarProyecto} end)

W=700 H=600 Lien
Canvas =canvas(width:W height:H bg:white  handle:Lien)
Wind={QTk.build td(title:"Proyecto modelos y paradigmas de programacion"
		   label(text:"Carlos A Delgado, Jose Heriberto, Nelson Chantre")
		   Canvas
		   Boton
		  )}
%Imagen de fondo
{Lien create(image 350 300 image:Fondo anchor:center )}
%Creacion imagenes de semaforos
%%%%%%%%%%%SEMAFORO 1%%%%%%%%%%%%%%%%%%%%%%%
{Lien create(rect 220 310 280 340 fill:black)}

LuzSemaforo1 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 260 315 280 335 fill:red tags:LuzSemaforo1)}

LuzSemaforo2 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 240 315 260 335 fill:gray tags:LuzSemaforo2)}

LuzSemaforo3 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 220 315 240 335 fill:gray tags:LuzSemaforo3)}


LucesSemaforoA1 = semaforo(rojo:LuzSemaforo1 amarillo:LuzSemaforo2 verde:LuzSemaforo3)

%%%%%%%%%%%SEMAFORO 2%%%%%%%%%%%%%%%%%%%%%%%
{Lien create(rect 420 250 480 280 fill:black)}

LuzSemaforo4 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 420 255 440 275 fill:red tags:LuzSemaforo4)}

LuzSemaforo5 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval  440 255 460 275 fill:gray tags:LuzSemaforo5)}

LuzSemaforo6 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval  460 255 480 275 fill:gray tags:LuzSemaforo6)}

LucesSemaforoA2 = semaforo(rojo:LuzSemaforo4 amarillo:LuzSemaforo5 verde: LuzSemaforo6)

%%%%%%%%%%%SEMAFORO 3%%%%%%%%%%%%%%%%%%%%%%%
{Lien create(rect 250 210 280 270 fill:black)}

LuzSemaforo7 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 255 250 275 270 fill:red tags:LuzSemaforo7)}

LuzSemaforo8 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval  255 230 275 250 fill:gray tags:LuzSemaforo8)}

LuzSemaforo9 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval  255 210 275 230 fill:gray tags:LuzSemaforo9)}

LucesSemaforoBD1 = semaforo(rojo:LuzSemaforo7 amarillo:LuzSemaforo8 verde: LuzSemaforo9)

%%%%%%%%%%%SEMAFORO 4%%%%%%%%%%%%%%%%%%%%%%%
{Lien create(rect 330 210 360 270 fill:black)}


LuzSemaforo10 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 335 250 355 270 fill:red tags:LuzSemaforo10)}

LuzSemaforo11 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 335 230 355 250  fill:gray tags:LuzSemaforo11)}

LuzSemaforo12 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 335 210 355 230  fill:gray tags:LuzSemaforo12)}

LucesSemaforoBI1 = semaforo(rojo:LuzSemaforo10 amarillo:LuzSemaforo11 verde:LuzSemaforo12)

%%%%%%%%%%%SEMAFORO 5%%%%%%%%%%%%%%%%%%%%%%%
{Lien create(rect 340 320 370 380 fill:black)}

LuzSemaforo13 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 345 320 365 340 fill:red tags:LuzSemaforo13)}

LuzSemaforo14 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 345 340 365 360 fill:gray tags:LuzSemaforo14)}

LuzSemaforo15 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 345 360 365 380 fill:gray tags:LuzSemaforo15)}

LucesSemaforoBI2 = semaforo(rojo:LuzSemaforo13 amarillo:LuzSemaforo14 verde: LuzSemaforo15)

%%%%%%%%%%%SEMAFORO 6%%%%%%%%%%%%%%%%%%%%%%%

{Lien create(rect 410 320 440 380 fill:black)}

LuzSemaforo16 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 415 320 435 340 fill:red tags:LuzSemaforo16)}

LuzSemaforo17 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 415 340 435 360 fill:gray tags:LuzSemaforo17)}

LuzSemaforo18 = {New Tk.canvasTag tkInit(parent:Lien)}
{Lien create(oval 415 360 435 380 fill:gray tags:LuzSemaforo18)}

LucesSemaforoBD2 = semaforo(rojo:LuzSemaforo16 amarillo:LuzSemaforo17 verde: LuzSemaforo18)

%{Luz1Semaforo1 tk(move 40 0)}
%{Luz1Semaforo1 tk(itemconfigure fill:blue)}

{Wind show}



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

%Clase CrearCalle
%Es una cola

fun {Calle}
   Llegada PuertoIn={NewPort Llegada}
   Salida  PuertoOut={NewPort Salida}
in
   thread Llegada=Salida  end
   cola(ins:proc {$ X} {Send PuertoIn X} end
        atn:proc {$ X} {Send PuertoOut X} end)
end

%Clase semaforo
class Semaforo
   %Los atributos son
   %estado indica estado del semaforo
   %nombre es el nombre del semaforo
   %sincronizado indica el nombre del semaforo sincronizado
   attr estado sucesor nombre sincronizado luces calle sensor

   %Estado inicial
   meth inic(Nombre Analogo Luces Calle Sensor)
      nombre := Nombre
      sincronizado := Analogo
      luces := Luces
      calle := Calle
      sensor := Sensor
   end

   %Establezco el sucesor en Control
   meth setControl(Suc)
      sucesor := Suc
   end
   
   %Recibo el control y se lo paso a mi sucesor
   meth control

      %Ejecuto la secuencia de mi analogo
      thread {@sincronizado secuencia} end

      %Ejecuto mi secuencia
      {self secuencia}
 
      %Le paso el control a mi sucesor
      {@sucesor control}
   end

   meth secuencia
      estado := 'verde'
      %Cambiar
      {@luces.rojo tk(itemconfigure fill:gray)}
      {@luces.amarillo tk(itemconfigure fill:gray)}
      {@luces.verde tk(itemconfigure fill:green)}
      %Mientras atiendo los carros
      thread
	 {For 1 5 1
	  proc{$ P}
	     {CircularVehiculos @calle @sensor}
	     {Delay TiempoSalidaCarros}
	  end
	 }
      end
      %Espero
      {Delay VerdeAAmarilloRojo}
      estado := 'amarilloRojo'
      {@luces.rojo tk(itemconfigure fill:red)}
      {@luces.amarillo tk(itemconfigure fill:yellow)}
      {@luces.verde tk(itemconfigure fill:gray)}
      %Espero
      {Delay AmarilloARojo}
      estado := 'rojo'
      {@luces.rojo tk(itemconfigure fill:red)}
      {@luces.amarillo tk(itemconfigure fill:gray)}
      {@luces.verde tk(itemconfigure fill:gray)}
   end
   
   meth getEstado(Valor)
      Valor = @estado
   end
end
%Clase para los semaforos con flecha, es un semeforo pero con más cosas
class SemaforoConFlecha from Semaforo
%En este cambia la secuencia, no más
   attr semaforoderecha

   meth setSemaforoDer(SemaforoDerecha)
      semaforoderecha := SemaforoDerecha
   end
   meth secuencia
      %Solo se modela la fecha

      estado := 'rojoYFlechaVerde'
      {@luces.rojo tk(itemconfigure fill:gray)}
      {@luces.amarillo tk(itemconfigure fill:gray)}
      {@luces.verde tk(itemconfigure fill:green)}

      %Mientras atiendo los carros
      thread
	 {For 1 5 1
	  proc{$ P}
	     {CircularVehiculos @calle @sensor}
	     {Delay TiempoSalidaCarros}
	  end
	 }
      end
      
      %Espero algunos segundos
      {Delay VerdeAAmarilloRojo}
      estado := 'rojoYFlechaAmarilloRojo'
      {@luces.rojo tk(itemconfigure fill:red)}
      {@luces.amarillo tk(itemconfigure fill:yellow)}
      {@luces.verde tk(itemconfigure fill:gray)}
      %Espero algunos segundos
      {Delay AmarilloARojo}
 
      %Ejecuto la secuencia de mi dereecha
      thread {@semaforoderecha secuencia} end
      
      estado := 'verdeYFlechaRojo'
      {@luces.rojo tk(itemconfigure fill:red)}
      {@luces.amarillo tk(itemconfigure fill:gray)}
      {@luces.verde tk(itemconfigure fill:gray)}
       
      %Espero 5 segundos
      {Delay VerdeAAmarilloRojo}
      estado := 'amarilloRojoYFlechaRojo'
      {Delay AmarilloARojo}   
       estado := 'rojoYFlechaRojo'
   end 
end

%Clase sensor
%Esta clase lleva un conteo de los carros que hay
class Sensor
   attr numeroCarros

   meth inic
      numeroCarros:=0
   end

   meth incrementar
      numeroCarros := @numeroCarros + 1
      
   end

   meth decrementar
      numeroCarros := @numeroCarros - 1
   end

   meth hayCarro(P)
      P=@numeroCarros  > 0
   end

   meth obtenerNumeroCarros(T)
      T=@numeroCarros
   end
end


%Funciones para generar vehiculos automaticamente, estos van a las calles y hacen cola
proc{GenerarVehiculosTipo1 Origen Calle Carros Posicion Sensor}
   local
      Xr =  {New Tk.canvasTag tkInit(parent:Lien)}
      Numero = {OS.rand} mod 2
      X
      ValueX
      ValueY
   in
      if Numero == 0 then
	 X = derecho
      else
	 X = volteader
      end
       %Se produce un delay para la creación de los carros
      {Delay {OS.rand} mod Generar}

     %El sensor detecta un carro mas
      {Sensor incrementar}
      
      {Lien create(image Posicion.xi Posicion.yi image:Carros anchor:center tags:Xr)}

      {Animar Xr Posicion Sensor}
      
      %Insercion del carro en la calle
      {Calle.ins X#Xr#Origen}
      

      {GenerarVehiculosTipo1 Origen Calle Carros Posicion  Sensor}
   end
end


proc{GenerarVehiculosTipo2 Origen Calle Carros Posicion Sensor}
   local
      Xr =  {New Tk.canvasTag tkInit(parent:Lien)}
      Numero = {OS.rand} mod 2
      X
      PosicionProximo
   in
      if Numero == 0 then
	 X = derecho
      else
	 X = volteaizq
      end
      %Se produce un delay entre 0 y 25 segundos
      {Delay {OS.rand} mod Generar}

      %El sensor detecta un carro mas
      {Sensor incrementar}
      {Lien create(image Posicion.xi Posicion.yi image:Carros anchor:center tags:Xr)}

      %Animacion
      {Animar Xr Posicion Sensor}
      
      %Insercion del carro en la calle
      {Calle.ins X#Xr#Origen}
      
      
      {GenerarVehiculosTipo2 Origen Calle Carros Posicion Sensor}
   end
end

%Sacar vehiculos sale cuando el semaforo esta en ver y tarda algo

proc{CircularVehiculos Calle Sensor}
   local
      CarroAtendido
      ManejadorCarro
      DestinoCarro
      OrigenCarro
      %Estas variables le indican a donde moverse
      MoverX
      MoverY
   in
      if {Sensor hayCarro($)} then
	 CarroAtendido = {Calle.atn}
	 ManejadorCarro = CarroAtendido.2
	 DestinoCarro = CarroAtendido.1
	 OrigenCarro = CarroAtendido.3

	 if OrigenCarro == 'A1' then
	    if DestinoCarro == derecho then
	       MoverX = 20
	       MoverY = 0
	    else
	       MoverX=0
	       MoverY=20
	    
	       {For 1 15 2
		proc{$ P}		   
		   {Delay 500}
		   {ManejadorCarro tk(move 10 0)}
		end
	       }
	       {ManejadorCarro tk(itemconfigure image:CarroCalleBI1)}
	    end
	 end
	 if OrigenCarro == 'A2' then
	    if DestinoCarro == derecho then
	       MoverX = ~20
	       MoverY = 0
	    else
	       MoverX=0
	       MoverY=~20
	       {For 1 15 2
		proc{$ P}		   
		   {Delay 500}
		   {ManejadorCarro tk(move ~10 0)}
		end
	       }
	        {ManejadorCarro tk(itemconfigure image:CarroCalleBI2)}
	    end
	 end

	 if OrigenCarro == 'B1' then
	    if DestinoCarro == derecho then
	       MoverX = 0
	       MoverY = 20
	    elseif DestinoCarro == volteader then
	       MoverX= 20
	       MoverY= 0
	       {For 1 15 2
		proc{$ P}		   
		   {Delay 500}
		   {ManejadorCarro tk(move 0 5)}
		end
	       }
	        {ManejadorCarro tk(itemconfigure image:CarroCalleA2)}
	    else
	       MoverX= ~20
	       MoverY = 0
	       {For 1 15 2
		proc{$ P}		   
		   {Delay 100}
		   {ManejadorCarro tk(move 0 5)}
		end
	       }
	        {ManejadorCarro tk(itemconfigure image:CarroCalleA1)}
	    end
	 end

	 if OrigenCarro == 'B2' then
	    if DestinoCarro == derecho then
	       MoverX = 0
	       MoverY = ~20
	    elseif DestinoCarro == volteader then
	       MoverX = ~20
	       MoverY = 0
	       {For 1 15 2
		proc{$ P}		   
		   {Delay 100}
		   {ManejadorCarro tk(move 0 ~5)}
		end

	       }
	        {ManejadorCarro tk(itemconfigure image:CarroCalleA1)}
	    else
	       MoverX = 20
	       MoverY = 0
	       {For 1 15 2
		proc{$ P}		   
		   {Delay 500}
		   {ManejadorCarro tk(move 0 ~5)}
		end
	       }
	       {ManejadorCarro tk(itemconfigure image:CarroCalleA2)} 
	    end
	 end
	 
	 {For 1 25 2
	  proc{$ P}
	     
	     {Delay 500}
	     {ManejadorCarro tk(move MoverX MoverY)}
	  end
	 }

	 %Borramos el carro
	 {ManejadorCarro tk(delete)}
	 %Decrementamos el numero de carros
	 {Sensor decrementar}	 
      end
   end
end

%Animar

proc{Animar Carro Posicion Sensor}
   local
      ValueX
      ValueY
      PosIni
      PosFin
      %Cambio en animacion
      Cambio = 10
      Size = 30
      ValorContador = {Sensor obtenerNumeroCarros($)} - 1
						  
   in
      if (Posicion.xi-Posicion.xf) < 0 then
	 ValueX = Cambio
	 ValueY = 0
	 PosIni = Posicion.xi
	 PosFin = Posicion.xf - Size*ValorContador
      elseif (Posicion.xi-Posicion.xf) > 0 then
	 ValueX = ~Cambio
	 ValueY = 0
	 PosIni = Posicion.xf
	 PosFin = Posicion.xi - Size*ValorContador
      elseif (Posicion.yi-Posicion.yf) < 0 then
	 ValueX = 0
      	 ValueY = Cambio
	 PosIni = Posicion.yi
	 PosFin = Posicion.yf- Size*ValorContador
      else
      	 ValueX = 0
	 ValueY = ~Cambio
	 PosIni = Posicion.yf
	 PosFin = Posicion.yi- Size*ValorContador
      end
	 
      %Iteracion para llegar
      {For PosIni PosFin Cambio
       proc{$ P}
	  {Delay 300}
	  {Carro tk(move ValueX ValueY)}
       end}
   end
end

%Programa
local
  %Generamos secuencia de calles
   CalleIB1  CalleDB1 CalleIB2 CalleDB2 CalleA1 CalleA2
   %CuentaCarrosEnCadaCarril
   SensorCarrilA1 = {New Sensor inic}
   SensorCarrilA2 = {New Sensor inic}
   SensorCarrilBI1 = {New Sensor inic}
   SensorCarrilBI2 = {New Sensor inic}
   SensorCarrilBD1 = {New Sensor inic}
   SensorCarrilBD2 = {New Sensor inic}

   %Generamos secuencia de Semaforos
   SemaforoA1 = {CrearObjActivo Semaforo inic('A1'  SemaforoA2 LucesSemaforoA1 CalleA1 SensorCarrilA1)}
   SemaforoA2 = {CrearObjActivo Semaforo inic('A2'  SemaforoA1 LucesSemaforoA2 CalleA2 SensorCarrilA2)}
      
   SemaforoBI1 = {CrearObjActivo SemaforoConFlecha inic('B1'  SemaforoBI2 LucesSemaforoBI1 CalleIB1 SensorCarrilBI1)}
   SemaforoBD1 = {CrearObjActivo Semaforo inic('B1'  SemaforoBD2 LucesSemaforoBD1 CalleDB1 SensorCarrilBD1)}
   
   SemaforoBI2 = {CrearObjActivo SemaforoConFlecha inic('B2'  SemaforoBI1 LucesSemaforoBI2 CalleIB2 SensorCarrilBI2)}
   SemaforoBD2 = {CrearObjActivo Semaforo inic('B2'  SemaforoBD1 LucesSemaforoBD2 CalleDB2 SensorCarrilBD2)} 
in

   proc{IniciarProyecto}      
   %Establecer control
      {SemaforoA1 setControl(SemaforoBI1)}
      {SemaforoBI1 setControl(SemaforoA1)}
           
      
   %Los semaforos de la izquierda controlan la secuencia de la derecha
      {SemaforoBI1 setSemaforoDer(SemaforoBD1)}
      {SemaforoBI2 setSemaforoDer(SemaforoBD2)}
      
      
   %Iniciar calles
      thread CalleIB1 = {Calle} end
      thread CalleDB1 = {Calle} end
      thread CalleIB2 = {Calle} end
      thread CalleDB2 = {Calle} end
      thread CalleA1 = {Calle} end
      thread CalleA2 = {Calle} end
      
   %Enviar vehiculos
   %Carriles izquierda
      
      thread {GenerarVehiculosTipo2 'B1' CalleIB1 CarroCalleBI1 pos(xi:320 yi:130 xf:320 yf:230)  SensorCarrilBI1} end
      thread {GenerarVehiculosTipo2 'B2' CalleIB2 CarroCalleBI2 pos(xi:400 yi:460 xf:400 yf:350)  SensorCarrilBI2} end
      
   %Carriles derechas
      thread {GenerarVehiculosTipo1 'B1' CalleDB1 CarroCalleBD1 pos(xi:290 yi:130 xf:290 yf:230)  SensorCarrilBD1} end
      thread {GenerarVehiculosTipo1 'B2' CalleDB2 CarroCalleBD2 pos(xi:380 yi:460 xf:380 yf:350)  SensorCarrilBD2} end
      thread {GenerarVehiculosTipo1 'A1' CalleA1 CarroCalleA1 pos(xi:160 yi:310 xf:260 yf:310)  SensorCarrilA1} end
      thread {GenerarVehiculosTipo1 'A2' CalleA2 CarroCalleA2 pos(xi:540 yi:290 xf:460 yf:290)  SensorCarrilA2} end
      
   %Logicamente el control inicia con el semaforo A1
      {SemaforoA1 control}
 
   end   
end
   
   
