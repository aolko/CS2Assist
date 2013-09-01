unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    BExBlock: TButton;
    BExItem: TButton;
    Label1: TLabel;
    procedure BExBlockClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses CS2;


procedure TForm1.BExBlockClick(Sender: TObject);
begin
//Adding example block snippet
with FormMain, SynEdit1 do
        begin
            Lines.Add('###############');
            Lines.Add(CS2.FileHeader);
            Lines.Add('###############');
            Lines.Add(CS2.sLineBreak);
          Lines.Add(CS2.name);
          Lines.Add(CS2.displayName);
          Lines.Add(CS2.addToCreative);
          Lines.Add(CS2.creativeTab);
          Lines.Add(CS2.hardness);
          Lines.Add(CS2.resistance);
          Lines.Add(CS2.textureFileXP);
          Lines.Add(CS2.textureFileXN);
          Lines.Add(CS2.textureFileYP);
          Lines.Add(CS2.textureFileYN);
          Lines.Add(CS2.textureFileZP);
          Lines.Add(CS2.textureFileZN);
        end;
end;

end.
