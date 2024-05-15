unit Vetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, System.Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    RichEdit1: TRichEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var

Quantidade : Integer;
Contador : Integer;
Texto : string;
NumAleatorio : Integer;
NumTexto : string;
TextoArquivo : TStrings;
Caminho : String;

procedure TForm1.Button1Click(Sender: TObject);
begin

  Quantidade := 0;
  Contador := 0;
  NumAleatorio :=  0;
  Texto := '';
  NumTexto := '';
  TextoArquivo := TStringList.Create();
  Caminho := '';

  if Edit1.Text <> '' then
  begin

    Try

      Quantidade := StrtoInt(Edit1.Text);

    Except

      ShowMessage('Digite um número válido');

    End;

    if Quantidade > 0 then
    begin

      for Contador := 0 to Quantidade - 1 do
      begin

      NumAleatorio := RandomRange(1,10000);

      NumTexto := InttoStr(numAleatorio);

      Texto := Texto + NumTexto + ',';

      end;

      with TFileSaveDialog.Create(nil) do
        try
          Title := 'Escolha o local de salvamento.';
          FileName := 'semtitulo.txt';
          Options := [fdoOverWritePrompt];
          if Execute then
          Caminho := FileName;
        finally
          Free;
        end;

      TextoArquivo.Add(Texto);

      TextoArquivo.SaveToFile(Caminho + '.txt')
    end;

  end;

end;

end.
