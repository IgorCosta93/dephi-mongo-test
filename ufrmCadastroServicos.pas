unit ufrmCadastroServicos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  ufrmCadastroPadrao, System.Actions, FMX.ActnList, FMX.Controls.Presentation;

type
  TfrmCadastroServicos = class(TfrmCadastroPadrao)
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroServicos: TfrmCadastroServicos;

implementation

{$R *.fmx}

uses udmDados;

procedure TfrmCadastroServicos.Button6Click(Sender: TObject);
begin
  inherited;
  with dmDados do
  begin
    FConMongo['SALAO']['VENDA'].Insert()
      .Values()
        .Add('DATA', now())
        .Add('TOTAL', 10.00)
        .BeginArray('ITENS')
          .BeginObject('ITEM01')
            .Add('DESCRICAO', 'ARROZ')
            .Add('UNIDADE', 'UND')
            .Add('PRECO', '5')
          .EndObject
          .BeginObject('ITEM02')
            .Add('DESCRICAO', 'FEIJAO')
            .Add('UNIDADE', 'UND')
            .Add('PRECO', '5')
          .EndObject
        .EndArray
      .&End
    .Exec;
  end;
end;

procedure TfrmCadastroServicos.Button7Click(Sender: TObject);
begin
  inherited;
  with dmDados do
  begin
    try
      FConMongo['SALAO']['VENDA'].Update()
        .Match()
          .Add('TOTAL', 10.00)
        .&End
        .Modify()
          .&Set()
            .Field('TOTAL', 20.00)
          .&End
          .CurrentDate()
            .asDate('ultALteracao')
          .&End
        .&End
      .Exec;
    finally
      ShowMessage('Atualizado com Sucesso!');
    end;
  end;
end;

procedure TfrmCadastroServicos.Button8Click(Sender: TObject);
begin
  inherited;
  with dmDados do
  begin
    try
      FConMongo['SALAO']['VENDA'].Remove()
        .Match()
          .Add('TOTAL', 10.00)
        .&End
      .Exec;
    finally
      ShowMessage('Removido com Sucesso!');
    end;
  end;
end;

end.
