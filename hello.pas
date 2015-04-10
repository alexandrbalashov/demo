const PATH = 'data.txt';
      N = 1000000;

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
  
var time:longint;
begin
  time:= milliseconds();
  writefile();
  time:= milliseconds()-time;
  writeln(time);
end.  