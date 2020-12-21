unit sasplayer;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  PasLibVlcPlayerUnit;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnPlay: TBitBtn;
    btnPause: TBitBtn;
    btnOpen: TBitBtn;
    btnOpenURL: TBitBtn;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    vlcPlayer: TPasLibVlcPlayer;
    procedure btnOpenClick(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnPlayClick(Sender: TObject);
begin
  vlcPlayer.Resume();
end;

procedure TForm1.btnPauseClick(Sender: TObject);
begin
  vlcPlayer.Pause();
end;

procedure TForm1.btnOpenClick(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    vlcPlayer.Play(WideString(OpenDialog1.FileName));
    Caption := OpenDialog1.FileName;
  end;

end;

end.

