

Program NumerosPerfectos_Y_NumerosMalvados;

Uses Crt;

Var 
  Numero,AuxBin,AuxilairPerfecto,AuxBin2,Perfectos,malvados,
  MayorPerfecto,MayorMalvado,MenorPerfecto,MenorMalvado,i,j:  Integer;

  PromedioPerfectos,PromedioMalvados:  Real;
Begin

  //Tqm Edui
  j := 0;
  perfectos := 0;
  malvados := 0;
  AuxilairPerfecto := 0;
  PromedioMalvados := 0;
  PromedioPerfectos := 0;
  AuxBin2 := 0;

  MayorMalvado  := 0;
  MayorPerfecto := 0;

  Writeln('Este programa calcula el promedio, el mayor, y el menor de los numeros perfectos y malvados de una secuencia numerica. ');
  Writeln('Ingrese una secuencia de numeros, utilizando el cero (0) para terminarla.');
  Readln(Numero);

  MenorMalvado := Numero+1;
  MenorPerfecto := Numero+1;

  While Numero<>0 Do
    Begin
      //*Se verifican los numeros perfectos
      AuxilairPerfecto := 0;
      For i := 1 To Numero-1 Do
        Begin
          If Numero Mod i = 0 Then
            Begin
              AuxilairPerfecto := AuxilairPerfecto+i;
            End;
        End;

      //*Se cuentan y acumulan los perfectos, y se verifica si hay un nuevo mayor y menor;
      If AuxilairPerfecto=Numero Then
        Begin
          Perfectos := Perfectos+1;
          PromedioPerfectos := PromedioPerfectos+Numero;
          If Numero > MayorPerfecto Then
            MayorPerfecto := Numero;
          If Numero < MenorPerfecto Then
            MenorPerfecto := Numero;
        End;


      //*Se verifican los numeros malvados
      AuxBin := Numero;
      j := 0;
      //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      Repeat
        AuxBin2 := AuxBin2 Mod 2;
        AuxBin := AuxBin Div 2;
        If AuxBin2 <> 0 Then
          Begin
            j := j+1;
          End;
      Until (AuxBin=0);


      //*Se cuentan y acumulan los malvados, y se verifica si hay un nuevo mayor y menor;

      If j Mod 2 = 0 Then
        Begin
          Malvados := Malvados+1;
          PromedioMalvados := PromedioMalvados+Numero;
          If Numero > MayorMalvado Then
            MayorMalvado := Numero;
          If Numero < MenorMalvado Then
            MenorMalvado := Numero;

        End;

      //*
      Writeln('Ingrese otro numero.');
      Readln(Numero);

    End;

  If Perfectos<>0 Then
    Begin
      PromedioPerfectos := PromedioPerfectos/Perfectos;
      Writeln('Numeros Perfectos: ');
      Writeln('El mayor es: ', MayorPerfecto);
      Writeln('El menor es: ', MenorPerfecto);
      Writeln('Y su promedio fue de: ',PromedioPerfectos:0:2);
      Writeln('------------------------------------------------');
    End
  Else
    Begin
      Writeln('No hubieron Numeros Perfectos');
      Writeln('------------------------------------------------');
    End;
  If Malvados<>0 Then
    Begin
      PromedioMalvados := PromedioMalvados/malvados;
      Writeln('Numeros Malvados: ');
      Writeln('El mayor es: ', MayorMalvado);
      Writeln('El menor es: ',MenorMalvado);
      Writeln('Y su promedio fue de: ',PromedioMalvados:0:2);
    End
  Else
    Writeln('No hubieron Numeros Malvados');


  Readkey();

End.










{!1.- Dado una secuencia de n??meros naturales, finalizada con un cero, construya un
algoritmo que determine : el mayor, el menor y el promedio de los n??meros perfectos y
a su vez malvados, seg??n la definici??n dada a continuaci??n.

N??mero perfecto: es todo n??mero natural que es igual a la suma de sus divisores propios
(es decir, todos sus divisorees excepto el propio n??mero). Por ejemplo, 6 es un n??mero
perfecto ya que sus divisores propios son 1, 2, y 3 y se cumple que 1+2+3=6.

N??mero malvado: todo n??mero natural cuya expresi??n en base 2 (binaria) contiene un
n??mero par de unos. Por ejemplo el 12 y el 15 son n??meros malvados ya que 12=1100
contiene dos(2) unos en su representaci??n binaria y 15=1111 contiene cuatro(4) unos
en su representaci??n binaria ( dos y cuatro son pares).

Nota : Para llevar un n??mero natural a binario, hacer divisiones sucesivas entre 2 y tomar
el resto.
}
