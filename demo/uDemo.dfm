object frmDemo: TfrmDemo
  Left = 313
  Top = 176
  Caption = 'frmDemo'
  ClientHeight = 151
  ClientWidth = 199
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 104
    Width = 80
    Height = 13
    Caption = 'Guilherme Torres'
  end
  object Label2: TLabel
    Left = 24
    Top = 120
    Width = 111
    Height = 13
    Caption = 'gt.borland2@gmail.com'
  end
  object btnSampleDataSet: TButton
    Left = 24
    Top = 24
    Width = 150
    Height = 25
    Caption = 'DataSet'
    TabOrder = 0
    OnClick = btnSampleDataSetClick
  end
  object btnMultiHeader: TButton
    Left = 24
    Top = 64
    Width = 150
    Height = 25
    Caption = 'Multi Header'
    TabOrder = 1
    OnClick = btnMultiHeaderClick
  end
  object cdsProducts: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    object cdsProductsproduct: TStringField
      FieldName = 'product'
      Size = 250
    end
    object cdsProductsprice: TStringField
      FieldName = 'price'
      Size = 10
    end
  end
end
