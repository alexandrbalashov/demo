const PATH = 'data.txt';

procedure writefile();
var f:text;
    v,i:integer;
begin
  assign(f,PATH);
  append(f);
  for i:=1 to 100000 do begin
    v:=random(10);
    writeln(f,v);
  end;
  close(f);
end;

begin
  writefile();
end.  