CONST PATH = 'data.txt';
      N = 10000;
      
VAR
  arr: array[1..N] of integer;     

procedure writefile();
var f:text;
    v,i:integer;
begin
  assign(f,PATH);
  rewrite(f);
  for i:=1 to N do begin
    v:=random(10);
    writeln(f,v);
  end;
  close(f);
end;

procedure readfile();
var f:text;
    a:integer;
begin
  assign(f,PATH);
  reset(f);
  while (not eof(f))do begin
    readln(f,a);
    writeln(a);
  end;
  close(f);
end;

procedure writeArr();
var i:integer;
begin
  for i:=1 to N do begin
    arr[i]:=random(10);
  end;
end;  

procedure readArr();
var i:integer;
begin
  for i:=1 to N do begin
    writeln(arr[i]);
  end;
end;

procedure main();
var time:longint;
    timeReadFile:longint;
    timeReadArr:longint;
begin
  writefile();  
  time:= milliseconds();
  readfile();
  timeReadFile:= milliseconds()-time;
  
  
  writeArr();
  time:= milliseconds();
  readfile();
  timeReadArr:= milliseconds()-time;
  
  writeln('read file = ',timeReadFile);
  writeln('read array = ',timeReadArr);
end;
    
    
BEGIN
  main(); 
END.  