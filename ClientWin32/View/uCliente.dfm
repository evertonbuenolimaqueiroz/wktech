object Fcliente: TFcliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fcliente'
  ClientHeight = 398
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object gconsulta: TcxGrid
    Left = 0
    Top = 0
    Width = 811
    Height = 398
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -76
    ExplicitTop = -89
    ExplicitWidth = 887
    ExplicitHeight = 487
    object giconsulta: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <
        item
          Hint = 'Habilitar/Desabilitar Filtro'
          ImageIndex = 19
        end
        item
          Hint = 'Habilitar/Desabilitar Grupo'
          ImageIndex = 3
        end>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] at'#233' [RecordCount]'
      Navigator.InfoPanel.Visible = True
      OnCellDblClick = giconsultaCellDblClick
      DataController.DataSource = dscliente
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Clique aqui para definir um filtro'
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = ':-) N'#227'o h'#225' nada para exibir aqui'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object giconsultanome: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'nome'
        Width = 644
      end
      object giconsultauf: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'uf'
        Width = 153
      end
    end
    object glconsulta: TcxGridLevel
      GridView = giconsulta
    end
  end
  object dscliente: TDataSource
    DataSet = DM.qycliente
    Left = 720
    Top = 56
  end
end
