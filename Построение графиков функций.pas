uses
  graphABC;

const
  W = 800;
  H = 500;//Размеры графического окна

var
  x0, y0, x, y, xLeft, yLeft, xRight, yRight, n, counter: integer;
  a, b, fmin, fmax, x1, y1, mx, my, dx, dy, num: real;
  i: byte;
  s, f: string;

function polskaya(f: string; x1: real): real;
const
  n = 30;

type
  mas = array[1..n] of string;

var
  mag, vixp: mas;
  fv, x, chislo, gg: string;
  smv: char;
  ch, kk: real;
  L, i, j, k, sk, b, r, h: integer;


begin
  ch := 0;
  if copy(f, 1, 1) = '-' then f := concat('0', f);
  L := Length(f);
  j := 0;
  k := 0;
  for i := 1 to L do
  begin
    smv := f[i];
    if (smv >= '0') and (smv <= '9') then
    begin
      ch := ch * 10 + StrToInt(smv);
      if i = L then
      begin
        k := k + 1;
        vixp[k] := FloatToStr(ch);
      end;
      if (i < L) and ((Copy(f, i + 1, 1) < '0') or (Copy(f, i + 1, 1) > '9')) then
      begin
        k := k + 1;
        vixp[k] := FloatToStr(ch);
      end;
    end
      else
    
    if (smv = ' ') then
    else
    
      //cosinus
    
    if (smv = 'c') and (f[i + 1] = 'o') and (f[i + 2] = 's') then
    begin
      sk := 1;
      b := 1;
      r := 4;
      while sk <> 0 do 
      begin
        if Copy(f, i + r, 1) = '(' then 
        begin
          inc(sk);
          inc(r);
          inc(b);
        end
        else
        if Copy(f, i + r, 1) = ')' then
        begin
          dec(sk);
          inc(r);
          inc(b);
        end
        else
        if (Copy(f, i + r, 1) <> '(') and (Copy(f, i + r, 1) <> ')') then
          inc(r);
        inc(b);
      end;
      gg := Copy(f, i + 3, b - 1);
      kk := polskaya(gg, x1);
      
      begin
        x := FloatToStr(cos(kk));
        chislo := x;
        ch := ch * 10 + StrToFloat(chislo);
        if i = L then
        begin
          k := k + 1;
          vixp[k] := FloatToStr(ch);
        end;
        if (i < L) and ((Copy(f, i + 1, 1) < '0') or (Copy(f, i + 1, 1) > '9')) then
        begin
          k := k + 1;
          vixp[k] := FloatToStr(ch);
        end;
      end;
      for h := 0 to (r - 1) do 
      begin
        Delete(f, i + h, 1);
        Insert(' ', f, i + h);
      end;
    end
    else
    
      //sinus
    
    if (smv = 's') and (f[i + 1] = 'i') and (f[i + 2] = 'n') then
    begin
      sk := 1;
      b := 1;
      r := 4;
      while sk <> 0 do 
      begin
        if Copy(f, i + r, 1) = '(' then 
        begin
          inc(sk);
          inc(r);
          inc(b);
        end
        else
        if Copy(f, i + r, 1) = ')' then
        begin
          dec(sk);
          inc(r);
          inc(b);
        end
        else
        if (Copy(f, i + r, 1) <> '(') and (Copy(f, i + r, 1) <> ')') then
          inc(r);
        inc(b);
      end;
      gg := Copy(f, i + 3, b - 1);
      kk := polskaya(gg, x1);
      
      begin
        x := FloatToStr(sin(kk));
        chislo := x;
        ch := ch * 10 + StrToFloat(chislo);
        if i = L then
        begin
          k := k + 1;
          vixp[k] := FloatToStr(ch);
        end;
        if (i < L) and ((Copy(f, i + 1, 1) < '0') or (Copy(f, i + 1, 1) > '9')) then
        begin
          k := k + 1;
          vixp[k] := FloatToStr(ch);
        end;
      end;
      for h := 0 to (r - 1) do 
      begin
        Delete(f, i + h, 1);
        Insert(' ', f, i + h);
      end;
    end
    else
    
    //tangens
    
    if (smv = 't') and (f[i + 1] = 'a') and (f[i + 2] = 'n') then
    begin
      sk := 1;
      b := 1;
      r := 4;
      while sk <> 0 do 
      begin
        if Copy(f, i + r, 1) = '(' then 
        begin
          inc(sk);
          inc(r);
          inc(b);
        end
        else
        if Copy(f, i + r, 1) = ')' then
        begin
          dec(sk);
          inc(r);
          inc(b);
        end
        else
        if (Copy(f, i + r, 1) <> '(') and (Copy(f, i + r, 1) <> ')') then
          inc(r);
        inc(b);
      end;
      gg := Copy(f, i + 3, b - 1);
      kk := polskaya(gg, x1);
      
      begin
        x := FloatToStr(tan(kk));
        chislo := x;
        ch := ch * 10 + StrToFloat(chislo);
        if i = L then
        begin
          k := k + 1;
          vixp[k] := FloatToStr(ch);
        end;
        if (i < L) and ((Copy(f, i + 1, 1) < '0') or (Copy(f, i + 1, 1) > '9')) then
        begin
          k := k + 1;
          vixp[k] := FloatToStr(ch);
        end;
      end;
      for h := 0 to (r - 1) do 
      begin
        Delete(f, i + h, 1);
        Insert(' ', f, i + h);
      end;
    end
    else
    
    if smv = '(' then
    begin
      j := j + 1;
      mag[j] := smv;
      ch := 0;
    end
      else
    if smv = 'x' then
    begin
      x := FloatToStr(x1);
      chislo := x;
      ch := ch * 10 + StrToFloat(chislo);
      if i = L then
      begin
        k := k + 1;
        vixp[k] := FloatToStr(ch);
      end;
      if (i < L) and ((Copy(f, i + 1, 1) < '0') or (Copy(f, i + 1, 1) > '9')) then
      begin
        k := k + 1;
        vixp[k] := FloatToStr(ch);
      end;
    end
        else
    if smv = ')' then
    begin
      while j = j do
      begin
        if j = 0 then
        begin
          writeln(concat('Некорректная формула!'));
          sleep(3000);
          halt;
        end;
        if mag[j] = '(' then
        begin
          j := j - 1;
          ch := 0;
          break;
        end;
        k := k + 1;
        vixp[k] := mag[j];
        j := j - 1;
      end;
    end
          else
    if (smv = '+') or (smv = '-') then
    begin
      while j = j do
      begin
        if j = 0 then
        begin
          j := j + 1;
          mag[j] := smv;
          ch := 0;
          break;
        end;
        if mag[j] = '(' then
        begin
          j := j + 1;
          mag[j] := smv;
          ch := 0;
          break;
        end;
        k := k + 1;
        vixp[k] := mag[j];
        j := j - 1;
      end;
    end
            else
    if (smv = '*') or (smv = '/') then
    begin
      while j = j do
      begin
        if j = 0 then
        begin
          j := j + 1;
          mag[j] := smv;
          ch := 0;
          break;
        end;
        if (mag[j] = '(') or (mag[j] = '+') or (mag[j] = '-') then
        begin
          j := j + 1;
          mag[j] := smv;
          ch := 0;
          break;
        end;
        k := k + 1;
        vixp[k] := mag[j];
        j := j - 1;
      end;
    end
              else
    begin
      fv := IntToStr(i);
      writeln(concat('Недопустимый символ в формуле!'));
      sleep(3000);
      halt;
    end;
  end;
  
  if j <> 0 then
  begin
    for i := j downto 1 do
    begin
      k := k + 1;
      vixp[k] := mag[i];
    end;
  end;
  fv := '';
  for i := 1 to k do
    fv := concat(fv, vixp[i], ' ');
  j := 0;
  for i := 1 to k do
  begin
    if (vixp[i] <> '+') and (vixp[i] <> '-') and (vixp[i] <> '*') and (vixp[i] <> '/') then
    begin
      j := j + 1;
      mag[j] := vixp[i];
    end
      else
    begin
      if j = 1 then
      begin
        writeln(concat('Некорректная формула!'));
        sleep(3000);
        halt;
      end;
    end;
    if vixp[i] = '+' then
    begin
      mag[j - 1] := FloatToStr(StrToFloat(mag[j - 1]) + StrToFloat(mag[j]));
      j := j - 1;
    end;
    if vixp[i] = '-' then
    begin
      mag[j - 1] := FloatToStr(StrToFloat(mag[j - 1]) - StrToFloat(mag[j]));
      j := j - 1;
    end;
    if vixp[i] = '*' then
    begin
      mag[j - 1] := FloatToStr(StrToFloat(mag[j - 1]) * StrToFloat(mag[j]));
      j := j - 1;
    end;
    if vixp[i] = '/' then
    begin
      mag[j - 1] := FloatToStr(StrToFloat(mag[j - 1]) / StrToFloat(mag[j]));
      j := j - 1;
    end;
    if vixp[i] = '(' then
    begin
      writeln(concat('Некорректная формула!'));
      sleep(3000);
      halt;
    end;
  end;
  polskaya := StrToFloat(mag[1]);
end;

begin
  SetWindowSize(W, H); //Устанавливаем размеры графического окна
  //Координаты левой верхней границы системы координат:
  xLeft := 50;
  yLeft := 50;
  //Координаты правой нижней границы системы координат:
  xRight := W - 50;
  yRight := H - 50;
  //интервал по Х; a и b должно нацело делится на dx:
  a := -2; b := 6; dx := 0.5;
  //Интервал по Y; fmin и fmax должно нацело делится на dy:
  fmin := -10; fmax := 20; dy := 2;
  //Устанавливаем масштаб:
  mx := (xRight - xLeft) / (b - a); //масштаб по Х
  my := (yRight - yLeft) / (fmax - fmin); //масштаб по Y
  //начало координат:
  x0 := trunc(abs(a) * mx) + xLeft;
  y0 := yRight - trunc(abs(fmin) * my);
  //Рисуем оси координат:
  line(xLeft, y0, xRight + 10, y0); //ось ОХ
  line(x0, yLeft - 10, x0, yRight); //ось ОY
  SetFontSize(12); //Размер шрифта
  SetFontColor(clBlue); //Цвет шрифта
  TextOut(xRight + 20, y0 - 15, 'X'); //Подписываем ось OX
  TextOut(x0 - 10, yLeft - 30, 'Y'); //Подписываем ось OY
  SetFontSize(8); //Размер шрифта
  SetFontColor(clRed); //Цвет шрифта
  { Засечки по оси OX: }
  n := round((b - a) / dx) + 1; //количество засечек по ОХ
  for i := 1 to n do
  begin
    num := a + (i - 1) * dx; //Координата на оси ОХ
    x := xLeft + trunc(mx * (num - a)); //Координата num в окне
    Line(x, y0 - 3, x, y0 + 3); //рисуем засечки на оси OX
    str(Num:0:1, s);
    if abs(num) > 1E-15 then //Исключаем 0 на оси OX
      TextOut(x - TextWidth(s) div 2, y0 + 10, s)
  end;
  { Засечки на оси OY: }
  n := round((fmax - fmin) / dy) + 1; //количество засечек по ОY
  for i := 1 to n do
  begin
    num := fMin + (i - 1) * dy; //Координата на оси ОY
    y := yRight - trunc(my * (num - fmin));
    Line(x0 - 3, y, x0 + 3, y); //рисуем засечки на оси Oy
    str(num:0:0, s);
    if abs(num) > 1E-15 then //Исключаем 0 на оси OY
      TextOut(x0 + 7, y - TextHeight(s) div 2, s)
  end;
  TextOut(x0 - 10, y0 + 10, '0'); //Нулевая точка
  { График функции строим по точкам: }
  x1 := a; //Начальное значение аргумента
  writeln('Введите формулу');
  readln(f);
  writeln('y= ', f);
  counter := 0;
  for i := 1 to length(f) do 
  begin
    if f[i] in ['+', '-', '/', '*', ')','(',' '] then counter := counter + 1;
    if (f[i] = '/') and (i <> length(f)) then begin
      if(f[i + 1] = '0') then begin
        writeln(concat('Некорректная формула!'));
        sleep(3000);
        halt;
      end;
    end;
  end;
  if counter = length(f) then begin
    writeln(concat('Некорректная формула!'));
    sleep(3000);
    halt;
  end;
  while x1 <= b do
  begin
    y1 := polskaya(f, x1); //Вычисляем значение функции
    x := x0 + round(x1 * mx); //Координата Х в графическом окне
    if (y1 >= -10) and (y1 <= 20) then begin
      y := y0 - round(y1 * my); //Координата Y в графическом окне
      //Если y попадает в границы [yLeft; yRight], то ставим точку:
      if (y >= yLeft) and (y <= yRight) then SetPixel(x, y, clGreen);
    end;
    x1 := x1 + 0.001//Увеличиваем абсциссу
  end;
end.
