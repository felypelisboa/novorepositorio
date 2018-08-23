unit Uproduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    btndel: TButton;
    btnnovo: TButton;
    btncancel: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    btnsair: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnsairClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure reset;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnsairClick(Sender: TObject);
begin
  close;
end;

procedure TForm2.reset;
begin

end;

end.
