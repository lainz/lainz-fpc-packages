unit lainzstrings;

{$mode objfpc}{$H+}
{$modeswitch TypeHelpers}

interface

uses
  SysUtils;

type

  { TLainzStringHelper }

  TLainzStringHelper = type helper for string
  private
    function GetLength: integer;
  public
    { Returns a string obtained by concatenating this string with the string representation of the given other string. }
    function plus(other: string): string; overload;
    { Returns a string obtained by concatenating this string with the string representation of the given other floating point number. }
    function plus(other: Extended): string; overload;
    { Returns a string obtained by concatenating this string with the string representation of the given other integer. }
    function plus(other: integer): string; overload;

    { Returns the length of this character sequence. }
    property length: integer read GetLength;
  end;

implementation

{ TLainzStringHelper }

function TLainzStringHelper.GetLength: integer;
begin
  Result := System.Length(Self);
end;

function TLainzStringHelper.plus(other: string): string;
begin
  Result := Self + other;
end;

function TLainzStringHelper.plus(other: Extended): string;
begin
  Result := Self + other.ToString();
end;

function TLainzStringHelper.plus(other: integer): string;
begin
  Result := Self + other.ToString();
end;

end.

