unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TF_Principal = class(TForm)
    Label1: TLabel;
    edtNumero: TEdit;
    btnCalcular: TButton;
    Label2: TLabel;
    memoTextoLivre: TMemo;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_CalculoPrimosThread;

procedure TF_Principal.btnCalcularClick(Sender: TObject);
var
  vNovaThread: CalculoPrimosThread;
begin
  vNovaThread := CalculoPrimosThread.Create(True);
  vNovaThread.FreeOnTerminate := True;
  try
    vNovaThread.Numero := StrToInt(edtNumero.Text);
    vNovaThread.Resume;
  except on EConvertError do
    begin
      vNovaThread.Free;
      ShowMessage('Não é um número válido!');
    end;
  end;
end;

end.
