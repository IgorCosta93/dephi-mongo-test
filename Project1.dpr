program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  ufrmCadastroPadrao in 'ufrmCadastroPadrao.pas' {frmCadastroPadrao},
  ufrmCadastroServicos in 'ufrmCadastroServicos.pas' {frmCadastroServicos},
  udmDados in 'udmDados.pas' {dmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
