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
      codped   : Integer;
      codpro   : integer;
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
    Label5: TLabel;
    txtcodped: TEdit;
    btnnovo: TButton;
    procedure txtfilialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnlimparClick(Sender: TObject);
    procedure btngerarClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    ListaPrincipal : TlistaPrincipal;
    procedure gerar;
  end;

var
  fmUEntProd: TfmUEntProd;

implementation

{$R *.dfm}

var qtdent,
    qtdtot,
    codfil,
    codpedi : Integer;

procedure TfmUEntProd.btnlimparClick(Sender: TObject);
begin
  txtfilial.Clear;
  txtproduto.Clear;
  txtqtdprod.Clear;
  txtqdtent.Clear;
  txtcodped.Clear;
  txtfilial.enabled:=false;
  txtproduto.enabled:=false;
  txtqtdprod.enabled:=false;
  txtqdtent.enabled:=false;
end;

procedure TfmUEntProd.btnnovoClick(Sender: TObject);
begin
  codpedi :=codpedi + 1 ;
  txtfilial.enabled:=true;
  txtproduto.enabled:=true;
  txtqtdprod.enabled:=true;
  txtqdtent.enabled:=true;
  txtcodped.text := inttostr(codpedi);
  txtfilial.SetFocus;
end;

procedure TfmUEntProd.btngerarClick(Sender: TObject);
  function valida :Boolean;
  begin
    result := false;
    if txtfilial.Text = '' then
    begin
      ShowMessage('Digite uma filial');
      txtfilial.SetFocus;
    end
    else
    if txtproduto.Text = '' then
    begin
      ShowMessage('Digite o codigo de um produto');
      txtproduto.setfocus;
    end
    else
    if (txtqtdprod.Text = '') and (StrToInt(txtqtdprod.Text) < 0 ) then
    begin
      ShowMessage('Digite a quantidade valida do produto');
      txtqtdprod.SetFocus;
    end
    else
    if txtqdtent.Text = '' then
    begin
      ShowMessage('Digite a quantidade de entrada do produto');
      txtqdtent.SetFocus;
    end
    else
    Result := True;
//    if StrToInt(txtproduto.Text) < StrToInt(txtqdtent.Text) then    //fazer isso nas saidas
//      ShowMessage('A quantide de saida � maior que na quantidade de produto em estoque');
  end;

begin
  if valida then
  begin
    gerar;
    ListaPrincipal.Carrega;
    ShowMessage('Gerado com sucesso');
    btnlimpar.Click;
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

procedure TfmUEntProd.FormCreate(Sender: TObject);
begin
   ListaPrincipal := TlistaPrincipal.Create;
end;

procedure TfmUEntProd.FormDestroy(Sender: TObject);
begin
   ListaPrincipal.Destroy;
end;

procedure TfmUEntProd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      VK_ESCAPE : self.Close;
   end;
end;

procedure TfmUEntProd.FormShow(Sender: TObject);
begin
  btnlimpar.Click;
  btnnovo.SetFocus;
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
    if  (Self.Items[i].codped = codigo) then
    begin
      Result := Self.Items[i];
      Break;
    end;
  end;
end;

// carrega lista

procedure TlistaPrincipal.carrega;
var l : Tlistabasica;
begin
  l.codfil := codfil;
  l.codped := codpedi;
  l.codpro := codpro;
end;

end.
