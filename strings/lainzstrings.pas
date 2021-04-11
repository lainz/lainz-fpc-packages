unit lainzstrings;

{$mode objfpc}{$H+}
{$modeswitch TypeHelpers}

interface

uses
  SysUtils;

type

  { TLainzStringHelper }

  TLainzStringHelper = type helper for string
    { Returns a string obtained by concatenating this string with the string representation of the given other string. }
    function plus(other: string): string; overload;
    { Returns a string obtained by concatenating this string with the string representation of the given other floating point number. }
    function plus(other: Extended): string; overload;
    { Returns a string obtained by concatenating this string with the string representation of the given other integer. }
    function plus(other: integer): string; overload;
  end;

implementation

{ TLainzStringHelper }

function TLainzStringHelper.plus(other: string): string;
begin
  Result := Self + other;
end;

function TLainzStringHelper.plus(other: Extended): string;
begin
  Result := Self + other.toString();
end;

function TLainzStringHelper.plus(other: integer): string;
begin
  Result := Self + other.ToString();
end;

end.

