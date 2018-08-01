unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    pnl1: TPanel;
    edt1: TEdit;
    btn1: TButton;
    edt2: TEdit;
    btn2: TButton;
    IdHTTP1: TIdHTTP;
    procedure pnl1Resize(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  IdHTTP1.Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Maxthon)';
  Caption := '1: ' + IdHTTP1.Request.UserAgent;
  mmo1.Lines.Clear;
  try
    mmo1.Text := IdHTTP1.Get(edt1.Text);
  except
    on e: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  ResponseStream: TStringStream;
  aStr: string;
begin
  ResponseStream := TStringStream.Create('');
  IdHTTP1.Request.UserAgent := 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134';
  IdHTTP1.Request.AcceptLanguage := 'zh-CN';
  IdHTTP1.Request.Accept := 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
  Caption := '2: ' + IdHTTP1.Request.UserAgent;
  mmo1.Lines.Clear;
  try
    IdHTTP1.Get(edt2.Text);
  except
    on e: Exception do
      ShowMessage(e.Message);
  end;

  aStr := ResponseStream.DataString;
  ResponseStream.Free;
  mmo1.Lines.Add(aStr);
end;

procedure TForm1.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn1.Click;
end;

procedure TForm1.edt2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn2.Click;
end;

procedure TForm1.pnl1Resize(Sender: TObject);
begin
  edt1.Width := pnl1.Width - 300;
  edt2.Width := pnl1.Width - 300;
  btn1.Left := pnl1.Width - 210;
  btn2.Left := pnl1.Width - 210;
end;

end.

