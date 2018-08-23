program Uprojeto;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {fmPrincipal},
  Uproduto in 'Uproduto.pas' {Form2},
  UEntProduto in 'UEntProduto.pas' {fmUEntProd};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfmUEntProd, fmUEntProd);
  Application.Run;
end.
