unit UEntProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tlistabasica = class(TList)
    private
      index  : Integer;
      function Get(index: Integer) : Tlistabasica;
    public
      codfil   : Integer;
      qtdtot   : Integer;
      qtdent   : Integer;
      function CreateNew : Tlistabasica;
      function indexOf(codigo :Integer) : Tlistabasica;
      property Items[Index:Integer] : Tlistabasica read Get;
  end;
  TlistaPrincipal = class (Tlistabasica)
    public
      procedure Carrega;
  end;


type
  TfmUEntProd = class(TForm)
    txtfilial: TEdit;
    Label1: TLabel;
    txtproduto: TEdit;
    Label2: TLabel;
    txtqtdprod: TEdit;
    Label3: TLabel;
    btnlimpar: TButton;
    btngerar: TButton;
    Label4: TLabel;
    txtqdtent: TEdit;
    btnsair: TButton;
    procedure txtfilialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnlimparClick(Sender: TObject);
    procedure btngerarClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure gerar;
  end;

var
  fmUEntProd: TfmUEntProd;

implementation

{$R *.dfm}

var qtdent, qtdtot, codfil : Integer;

procedure TfmUEntProd.btnlimparClick(Sender: TObject);
begin
  txtfilial.Clear;
  txtproduto.Clear;
  txtqtdprod.Clear;
  txtqdtent.Clear;
end;

procedure TfmUEntProd.btngerarClick(Sender: TObject);
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
    if txtqdtent.Text = '' then
      ShowMessage('Digite a quantidade de entrada do produto')
    else
      result := True;
//    if StrToInt(txtproduto.Text) < StrToInt(txtqdtent.Text) then
//      ShowMessage('A quantide de saida é maior que na quantidade de produto em estoque');


  end;
begin
  if valida then
  begin
    carrega;
    ShowMessage('Gerado com sucesso');
  end;
end;

procedure TfmUEntProd.gerar;
begin
  qtdtot := StrToInt(txtqtdprod.Text);
  qtdent := StrToInt(txtqdtent.Text);
end;

procedure TfmUEntProd.btnsairClick(Sender: TObject);
begin
  self.Close;
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

//lista

function Tlistabasica.CreateNew : Tlistabasica;
begin
  Result        := Tlistabasica.Create;
  Result.Index  := Self.Count;
  Add(Result);
end;

function Tlistabasica.Get(index: Integer): Tlistabasica;
begin
  Result := inherited Items[Index];
end;

function Tlistabasica.indexOf(codigo: Integer): Tlistabasica;
var i: Integer;
begin
  Result := nil;
  for i  := 0 to Self.Count - 1 do
  begin
    if  (Self.Items[i].codigo = codigo) then
    begin
      Result := Self.Items[i];
      Break;
    end;
  end;
end;

// carrega lista

procedure TlistaPrincipal.carrega;
begin

end;

end.