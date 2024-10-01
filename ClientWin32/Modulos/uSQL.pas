unit uSQL;

interface

uses SysUtils;

function SQLProdutos: String;

implementation

function SQLProdutos: String;
begin
  Result := ' SELECT * FROM produtos ' + sLineBreak +
            ' WHERE codigo like ' + QuotedStr('%@produto%') + sLineBreak +
            ' OR descricao like ' + QuotedStr('%@produto%');
end;

end.
