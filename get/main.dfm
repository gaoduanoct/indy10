object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 324
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 0
    Top = 81
    Width = 505
    Height = 243
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 81
    Align = alTop
    TabOrder = 1
    OnResize = pnl1Resize
    object edt1: TEdit
      Left = 12
      Top = 13
      Width = 381
      Height = 21
      TabOrder = 0
      Text = 
        'http://117.135.237.4:9090/agent/api/treatmentModeUpdate?userName' +
        '=VDAwMjIxMQ==&userPwd=VDAwMjIxMQ==&centerNo=NTIyMjI2&hospCode=Nz' +
        'g3MA==&Year=MjAxOA=='
      OnKeyPress = edt1KeyPress
    end
    object btn1: TButton
      Left = 424
      Top = 9
      Width = 75
      Height = 25
      Caption = #27491#30830
      TabOrder = 1
      OnClick = btn1Click
    end
    object edt2: TEdit
      Left = 12
      Top = 45
      Width = 381
      Height = 21
      TabOrder = 2
      Text = 
        'http://117.135.237.4:9090/agent/api/treatmentModeUpdate?userName' +
        '=VDAwMjIMQ==&userPwd=VDAwMjIxMQ==&centerNo=NTIyMjI2&hospCode=Nzg' +
        '3MA==&Year=MjAxOA=='
      OnKeyPress = edt2KeyPress
    end
    object btn2: TButton
      Left = 424
      Top = 40
      Width = 75
      Height = 25
      Caption = '403'
      TabOrder = 3
      OnClick = btn2Click
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Maxthon)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 248
    Top = 168
  end
end
