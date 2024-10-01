unit eInterface.Controller.CriarPedido;

interface

uses System.SysUtils, DateUtils, Uni;

type
  iPedido = Interface
    ['{12EF5451-A517-4C35-BEDD-11238D4B844E}']
    procedure InicializarPedido(const poQueryCab, poQueryItens, poQueryClientes, poQueryProdutos: TUniQuery);
    procedure AddPedido(const poQuery: TUniQuery; const dataemissao: TDateTime;  const valor: Currency);
    procedure EditarPedido(const poQuery: TUniQuery; const valor: Currency; cliente: Integer);
    function NumeroPedido(const poQuery: TUniQuery): Integer;
    procedure AddProduto(const poQuery, poQueryProduto, poQueryNumeroPedido: TUniQuery; const quantidade, valor: Currency);
    procedure AtualizarProduto(const poQuery: TUniQuery; const NumeroPedido: Integer);
  End;

implementation

end.



