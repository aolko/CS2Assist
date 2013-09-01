unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.ComCtrls, Vcl.ToolWin,
  JvExComCtrls, JvToolBar, Vcl.ExtCtrls, SynEdit, SynEditHighlighter,
  SynHighlighterJScript, Vcl.ImgList, SynCompletionProposal,
  SynEditOptionsDialog, SynEditMiscClasses, SynEditSearch;

type
  TFormMain = class(TForm)
    OpenTextFileDialog1: TOpenTextFileDialog;
    SaveTextFileDialog1: TSaveTextFileDialog;
    PTop: TPanel;
    PContent: TPanel;
    JvToolBar1: TJvToolBar;
    TBNewScript: TToolButton;
    SynJScriptSyn1: TSynJScriptSyn;
    SynEdit1: TSynEdit;
    ILIcons: TImageList;
    TBOpenScript: TToolButton;
    TBSave: TToolButton;
    TBSaveAs: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    SynAutoComplete1: TSynAutoComplete;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    SynEditSearch1: TSynEditSearch;
    ToolButton7: TToolButton;
    TBAddComment: TToolButton;
    procedure TBOpenScriptClick(Sender: TObject);
    procedure TBSaveClick(Sender: TObject);
    procedure TBSaveAsClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure TBAddCommentClick(Sender: TObject);
    procedure SynEdit1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure TBNewScriptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
  NewScriptCaption: string;

  const
    FrmCaption = 'CS2Assist - Editor';

implementation

{$R *.dfm}

uses Unit1,CS2;

procedure TFormMain.FormCreate(Sender: TObject);
begin
NewScriptCaption := FormMain.Caption +' '+ '[Untitled]';
end;

procedure TFormMain.SynEdit1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   selection : string;
begin
   selection := SynEdit1.SelText;
end;

procedure TFormMain.TBAddCommentClick(Sender: TObject);
begin
with SynEdit1 do
begin
Lines.Add('/*');
Lines.Add('Comment');
Lines.Add('*/');
end;
end;

procedure TFormMain.TBNewScriptClick(Sender: TObject);
begin
with SynEdit1 do
begin
Lines.Clear;
FormMain.Caption := 'CS2Assist - '+ '[Untitled]';
end;
end;

procedure TFormMain.TBOpenScriptClick(Sender: TObject);
begin
   with OpenTextFileDialog1, SynEdit1 do
      if Execute then
         Lines.LoadFromFile(FileName);
         FormMain.Caption := FrmCaption +' '+'['+
                    OpenTextFileDialog1.FileName+']';
         //OpenTextFileDialog1.Free;
end;

procedure TFormMain.TBSaveAsClick(Sender: TObject);
begin
with SaveTextFileDialog1, SynEdit1 do
      if Execute then
        begin
           Lines.SaveToFile(FileName);
           OpenTextFileDialog1.FileName:=FileName; // Чтобы исправленный текст не затёр источник
           FormMain.Caption := FrmCaption +' '+'['+SaveTextFileDialog1.FileName+']';
           //OpenTextFileDialog1.Free;
        end;
end;

procedure TFormMain.TBSaveClick(Sender: TObject);
begin
SynEdit1.Lines.SaveToFile(OpenTextFileDialog1.FileName);
FormMain.Caption := FrmCaption +' '+'['+SaveTextFileDialog1.FileName+']';
saveTextFileDialog1.Free;
end;

procedure TFormMain.ToolButton4Click(Sender: TObject);
begin
form1.show;
end;

procedure TFormMain.ToolButton6Click(Sender: TObject);
begin
//SynEditSearch1.
end;

end.
