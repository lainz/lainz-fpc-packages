unit lainzstringsoperators;

{$mode objfpc}{$H+}

interface

uses
  lainzstrings;

Operator + (s: string; f: extended)z: string;
Operator + (s: string; i: integer)z: string;

implementation

Operator + (s: string; f: extended)z: string;
begin
  z := s.plus(f);
end;

Operator + (s: string; i: integer)z: string;
begin
  z := s.plus(i);
end;

end.

