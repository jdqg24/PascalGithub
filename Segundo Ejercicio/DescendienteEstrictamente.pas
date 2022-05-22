
Program DesdendienteeEstrictamente;

Uses Crt;

Var 

  //* NumAnt: El numero anterior al que se ingresa; NumPost: El Numero que rompe la secuencia descendente; Descendente: El booleano que almacena si es descendente o no. 
  Num, i, NumPost,NumAnt: Integer;
  Descendente: Boolean;

Begin
  //*Se inicializa el contador a 1 para que cuente el 0 dentro de la secuencia; tambien se inicializa el booleano en verdadero porque idealmente todos los numeros ingresados seran mayores que 0, el ultimo de la secuencia.
  i := 1;
  Descendente := true;

  Writeln('Este programa verifica si una secuencia de numeros es descendiente.');
  Writeln('Ingrese una secuencia de numeros enteros terminada por 0.');
  Readln(Num);

  //*Se aumenta el numero anterior en 1 al ingresado para que siempre sea mayor en la primera iteracion. 
  NumAnt := Num+1;

  While (Num<>0) Do
    Begin

      i := i+1;

      //*Se verifica si la secuencia esta siendo descendente, y si no, se asigna un falso al booleano y se guardan los valores de los numeros de la secuencia que rompieron el patron, es decir, el anterior y el ingresado que es mayor al anterior.
      If (NumAnt <= Num) And (descendente=true) Then
        Begin
          Descendente := false;
          NumPost := Num;
          NumAnt := NumAnt;
        End;

      //*Se verifica si sigue siendo descendente para asignar el numero ingresado al numero anterior para la siguiente iteracion
      If (Descendente=true) Then
        NumAnt := Num;

      Writeln('Ingrese otro numero');
      Readln(Num);
    End;

  //*Se envia un mensaje mostrando si la secuencia es descendente o no.
  If Descendente=true Then
    Writeln('Su lista de ',i,' elementos es descendente.')
  Else
    Writeln('Su lista de ',i,' elementos NO es descendente, ya que aparece ',NumAnt,' seguido de ',NumPost,'.');
  Readkey();
End.





{2.- Construya un programa que lea los elementos de una secuencia de números enteros que termina con un 0. Si la secuencia es estrictamente descendente el programa debe escribir el mensaje “Su lista de N elementos es descendente”, donde N es la cantidad de elementos de la lista, incluyendo el 0. Si la secuencia no es estrictamente descendente debe escribir el mensaje “Su lista de N elementos no es descendente, ya que aparece A seguido de B”,donde A y B son dos números que aparecen en la secuencia, A inmediatamente antes de B y B no es menor que A.

Por ejemplo, si la secuencia en la entrada es 10, 9, 4, 2, 0, la salida debe ser :
Su lista de 5 elementos es descendente.

Por otra parte, si la secuencia en la entrada es 8, 6, 5, 7, 6, 8, 0, la salida debe ser:
Su lista de 7 elementos NO es descendente, ya que aparece 5 seguido de 7.

De igual manera para la lista 6, 3, 3, 0, la salida debe ser:
Su lista de 4 elementos NO es descendente ya que aparece 3 seguido de 3.

Nota : Para la corrida de este programa usar los datos de los ejemplo dados.}
