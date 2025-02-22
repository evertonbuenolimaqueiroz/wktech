unit uCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TFcliente = class(TForm)
    gconsulta: TcxGrid;
    giconsulta: TcxGridDBTableView;
    glconsulta: TcxGridLevel;
    dscliente: TDataSource;
    giconsultanome: TcxGridDBColumn;
    giconsultauf: TcxGridDBColumn;
    procedure giconsultaCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcliente: TFcliente;

implementation

{$R *.dfm}

uses UDM;

procedure TFcliente.giconsultaCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ModalResult := mrOk;
  dm.qypedidocab.Edit;
  dm.qypedidocabcliente.AsInteger := dm.qyclientecodigo.AsInteger;
  dm.qypedidocab.Post;
end;

end.
