program PPrincipal;

{
  Autor Everton Bueno Lima.
  ***Como o Terminal de Consulta � simples e n�o tem uma taxa grande de consumo
  as aplica��es ser�o abertas.
}

uses
  Vcl.Forms,
  Vcl.Controls,
  UPPrincipal in 'UPPrincipal.pas' {frmprincipal},
  UDM in 'Modulos\UDM.pas' {DM: TDataModule},
  MsgBox in 'Biblioteca\MsgBox.pas',
  uCliente in 'View\uCliente.pas' {Fcliente},
  eInterface.Controller.CriarPedido in 'Interface\eInterface.Controller.CriarPedido.pas',
  eInterface.Model.CriarPedido in 'Interface\eInterface.Model.CriarPedido.pas',
  uSQL in 'Modulos\uSQL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.CreateForm(TFcliente, Fcliente);
  Application.Run;

end.
