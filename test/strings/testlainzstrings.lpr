program testlainzstrings;

{$DEFINE USE_STRINGS_OPERATORS}

uses
  lainzstrings {$IFDEF USE_STRINGS_OPERATORS}  ,
  lainzstringsoperators {$ENDIF};

  procedure test1();
  const
    s: string = 'Hello, ';
  begin
    writeln('1) string plus string');
    writeln(s.plus('World'));
  end;

  procedure test2();
  const
    s: string = 'Total: ';
    f: double = 100.5;
  begin
    writeln('2) string plus floating point');
    writeln(s.plus(f));
    {$IFDEF USE_STRINGS_OPERATORS}
    writeln(s + f);
    {$ENDIF}
  end;

  procedure test3();
  const
    s: string = 'Total: ';
    i: integer = 5;
  begin
    writeln('3) string plus integer');
    writeln(s.plus(i));
    {$IFDEF USE_STRINGS_OPERATORS}
    writeln(s + i);
    {$ENDIF}
  end;

  procedure test4();
  const
    s: string = 'Hello, World';
  begin
    writeln('4) length of ''Hello, World''');
    writeln(s.length);
  end;

begin
  test1();
  test2();
  test3();
  test4();
  readln();
end.
