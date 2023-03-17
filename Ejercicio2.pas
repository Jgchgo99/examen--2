
Program Ejer2;

Uses crt;

Var 
  numero : longint;
  modulo : array[1..5] Of integer;
  resultado: Extended;

  a: char;


Procedure estmodulo(a:integer);

Begin
  modulo[a] := 1;
  modulo[0] := 0;
End;

Procedure mostrarmod(a, color:integer);

Begin
  Write('El numero ');
  textcolor(color);
  write(numero);
  textcolor(white);
  Write(' es Divisible entre ');
  textcolor(color);
  Writeln(a);
  textcolor(white);
  Write('Lo cual da como resultado : ');
  textcolor(color);
  resultado := numero/a;
  Writeln(resultado:0:0);
  textcolor(white);
End;

Begin
  modulo[0] := 1;
  modulo[1] := 0;
  modulo[2] := 0;
  modulo[3] := 0;
  modulo[4] := 0;
  modulo[5] := 0;
  clrscr;
  textcolor(white);
  WriteLn('Bienvenido');
  Write('Este Programa determina si un Numero Entero Es Divisible entre : ');
  Textcolor(yellow);
  Write(2);
  textcolor(white);
  Write(', ');
  textcolor(blue);
  Write('3');
  textcolor(white);
  Write(', ');
  textcolor(red);
  Write(5);
  textcolor(white);
  Write(', ');
  textcolor(green);
  Write(7);
  textcolor(white);
  Write(' o ');
  textcolor(6);
  Write(13);
  textcolor(white);
  Writeln('.');
  WriteLn('Introduzca un numero :');
  ReadLn(numero);
  WriteLn;

  If (numero Mod 2 = 0) Then estmodulo(1);
  If (numero Mod 3 = 0) Then estmodulo(2);
  If (numero Mod 5 = 0) Then estmodulo(3);
  If (numero Mod 7 = 0) Then estmodulo(4);
  If (numero Mod 13 = 0) Then  estmodulo(5);

  If modulo[1] = 1 Then mostrarmod(2, 14);

  If modulo[2] = 1 Then mostrarmod(3, 1);



  If  modulo[3]= 1 Then mostrarmod(5, 4);

  If modulo[4] = 1 Then mostrarmod(7,2);

  If  modulo[5] = 1 Then mostrarmod(13,6);

  If modulo[0] = 1 Then
    Begin
      textcolor(lightred);
      write('El numero introducido no es divisible entre ninguno');
      writeln(' de los valores que este programa puede calcular.');
      textcolor(white);
    End;

  WriteLn;
  WriteLn('Presione Cualquier tecla para finalizar el programa...');
  a := readkey;
End.
