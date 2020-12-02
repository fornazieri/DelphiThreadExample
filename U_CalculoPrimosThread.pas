unit U_CalculoPrimosThread;

interface

uses
  System.Classes, System.SysUtils, Vcl.Dialogs;

type
  CalculoPrimosThread = class(TThread)
  public
    numero : Integer;
  private
    { Private declarations }
  protected
    procedure Execute; override;
    function ehPrimo : Boolean;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure CalculoPrimosThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ CalculoPrimosThread }

function CalculoPrimosThread.ehPrimo: Boolean;
var
  iter: integer;
begin
  result := true;
  if numero < 0 then
  begin
    result := false;
    exit;
  end;
  if numero <= 2 then
    exit;
  for iter := 2 to numero - 1 do
  begin
    if (numero mod iter) = 0 then
    begin
      result := false;
      {exit;}
    end;
  end;
end;

procedure CalculoPrimosThread.Execute;
begin
  { Place thread code here }
  if EhPrimo then
    ShowMessage(IntToStr(numero) + ' é primo.')
  else
    ShowMessage(IntToStr(numero) + ' não é primo.');
end;

end.
