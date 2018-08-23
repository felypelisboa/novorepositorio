unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmPrincipal = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure resetform;
  end;

var
  fmPrincipal: TfmPrincipal;

implementation
uses UEntProduto;
{$R *.dfm}

procedure TfmPrincipal.Button1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TfmPrincipal.Button2Click(Sender: TObject);
var f:TfmUEntProd;
begin
  f:=TfmUEntProd.Create(nil);
  f.ShowModal;
  f.Free;
end;

procedure TfmPrincipal.resetform;
begin

end;

end.
