unit ufrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Actions,
  FMX.ActnList, FMX.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    Action1: TAction;
    MenuItem1: TMenuItem;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses ufrmCadastroServicos;

procedure TfrmPrincipal.Action1Execute(Sender: TObject);

var
  Form: TfrmCadastroServicos;

begin
  Form := TfrmCadastroServicos.Create(Self);

  try
    Form.ShowModal;
  finally
    Form.Free;
  end;

end;

end.
