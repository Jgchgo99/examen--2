program Conversor;

uses
  SysUtils;

function DecimalABinario(decimal: integer): string;
begin
  if decimal > 1 then
    DecimalABinario := DecimalABinario(decimal div 2) + IntToStr(decimal mod 2)
  else
    DecimalABinario := IntToStr(decimal);
end;

function DecimalAHexadecimal(decimal: integer): string;
const
  digitosHexa: string = '0123456789ABCDEF';
begin
  if decimal > 15 then
    DecimalAHexadecimal := DecimalAHexadecimal(decimal div 16) + digitosHexa[decimal mod 16 + 1]
  else
    DecimalAHexadecimal := digitosHexa[decimal + 1];
end;

function DecimalAOctal(decimal: integer): string;
begin
  if decimal > 7 then
    DecimalAOctal := DecimalAOctal(decimal div 8) + IntToStr(decimal mod 8)
  else
    DecimalAOctal := IntToStr(decimal);
end;

function DecimalARomano(decimal: integer): string;
const
  simbolos: array[1..13] of string = ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I');
  valores: array[1..13] of integer = (1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1);
var
  i: integer;
begin
  DecimalARomano := '';
  for i := 1 to 13 do
  begin
    while decimal >= valores[i] do
    begin
      DecimalARomano := DecimalARomano + simbolos[i];
      decimal := decimal - valores[i];
    end;
  end;
end;

var
  frase: string;
  continuar: boolean;
  opcion: char;
  decimal: integer;
begin
  continuar := True;
  while continuar do
  begin
    Write('Ingrese una frase: ');
    Readln(frase);

    WriteLn;
    WriteLn('Seleccione una opcion:');
    WriteLn('  B: Convertir a binario');
    WriteLn('  H: Convertir a hexadecimal');
    WriteLn('  O: Convertir a octal');
    WriteLn('  R: Convertir a romano');
    WriteLn('  S: Salir');
    Write('Opcion: ');
    Readln(opcion);

    case UpCase(opcion) of
      'B': begin
             decimal := Length(frase);
             WriteLn('El resultado de la conversion es: ', DecimalABinario(decimal));
           end;
      'H': begin
             decimal := Length(frase);
             WriteLn('El resultado de la conversion es: ', DecimalAHexadecimal(decimal));
           end;
      'O': begin
 decimal := Length(frase);
         WriteLn('El resultado de la conversion es: ', DecimalAOctal(decimal));
       end;
  'R': begin
         decimal := Length(frase);
         WriteLn('El resultado de la conversion es: ', DecimalARomano(decimal));
       end;
  'S': continuar := False;
else
  WriteLn('Opcion invalida');
end;

if continuar then
begin
  WriteLn;
  Write('Presione cualquier tecla para continuar...');
  Readln;
  WriteLn;

  WriteLn('Desea realizar otra conversion? (S/N)');
  Readln(opcion);
  continuar := (UpCase(opcion) = 'S');
end;
end;
end.
