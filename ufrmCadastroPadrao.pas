unit ufrmCadastroPadrao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Actions, FMX.ActnList;

type
  TfrmCadastroPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    ActionList1: TActionList;
    acNovo: TAction;
    acEditar: TAction;
    acExcluir: TAction;
    acSalvar: TAction;
    acSair: TAction;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.fmx}

end.
