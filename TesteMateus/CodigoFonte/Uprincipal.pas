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
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmPrincipal.Button3Click(Sender: TObject);
begin
  ShowMessage('Não deu tempo de fazer :(');
end;

procedure TfmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      VK_ESCAPE : self.Close;
   end;
end;

procedure TfmPrincipal.resetform;
begin

end;

end.
