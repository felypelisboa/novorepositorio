unit UEntProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfmUEntProd = class(TForm)
    txtfilial: TEdit;
    Label1: TLabel;
    txtproduto: TEdit;
    Label2: TLabel;
    txtqtdprod: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    txtqdtent: TEdit;
    procedure txtfilialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  fmUEntProd: TfmUEntProd;

implementation

{$R *.dfm}

procedure TfmUEntProd.Button1Click(Sender: TObject);
begin
  txtfilial.Clear;
  txtproduto.Clear;
  txtqtdprod.Clear;
end;

procedure TfmUEntProd.Button2Click(Sender: TObject);
  function valida :Boolean;
  begin
    result := false;
    if txtfilial.Text = '' then
      ShowMessage('Digite uma filial')
    else
    if txtproduto.Text = '' then
      ShowMessage('Digite o codigo de um produto')
    else
    if txtqtdprod.Text = '' then
      ShowMessage('Digite a quantidade do produto')
    else
    if txtqdtent.Text then
      ShowMessage('Digite a quantidade de entrada do produto')
    else
//    if StrToInt(txtproduto.Text) < StrToInt(txtqdtent.Text) then
//      ShowMessage('A quantide de saida � maior que na quantidade de produto em estoque');


  end;
begin

end;

procedure TfmUEntProd.txtfilialKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      VK_RETURN : txtproduto.SetFocus;
   end;
end;

procedure TfmUEntProd.txtprodutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      VK_RETURN : txtqtdprod.SetFocus;
   end;
end;

end.
