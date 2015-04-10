const PATH = 'data.txt';
      N = 10000;

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
    
var time:longint;
begin
  time:= milliseconds();
  writefile();
  time:= milliseconds()-time;
  writeln(time);
  
  time:= milliseconds();
  readfile();
  time:= milliseconds()-time;
  writeln(time);
end.  