unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Gauges;

type
  TForm1 = class(TForm)
    gBarra1: TGauge;
    gBarra2: TGauge;
    gBarra3: TGauge;
    gBarra4: TGauge;
    btnHorario: TButton;
    btnAntiHorario: TButton;
    btnLoop: TButton;
    edtVoltas: TEdit;
    procedure btnHorarioClick(Sender: TObject);
    procedure btnAntiHorarioClick(Sender: TObject);
    procedure btnLoopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var i : integer;



procedure TForm1.btnAntiHorarioClick(Sender: TObject);
  begin
    btnHorario.Enabled := false;
    btnLoop.Enabled := false;
    gBarra4.ForeColor := clWhite;
    gBarra4.BackColor := clRed;
    gBarra4.Progress := 100;
    for i := 100 downto 0 do
      begin
        gBarra4.Progress := gBarra4.Progress - 1;
        Sleep(15)
      end;
    if gBarra4.Progress = 0 then
      begin
         for i := 0 to 100 do
           begin
            gBarra3.Progress := gBarra3.Progress + 1;
            Sleep(15)
           end;
      end;
    if gBarra3.Progress = 100 then
      begin
        gBarra2.Progress := 0;
          for i := 0 to 100 do
            begin
              gBarra2.Progress := gBarra2.Progress + 1;
              Sleep(15)
            end;
      end;
    if gBarra3.Progress = 100 then
      begin
       gBarra1.Progress := 100;
       gBarra1.ForeColor := clwhite;
       gBarra1.BackColor := clRed;
        for i := 100 Downto 0 do
          begin
            gBarra1.Progress := gBarra1.Progress - 1;
            Sleep(15)
          end;
      end;
      if gBarra1.Progress = 0 then
        begin
          gBarra1.Progress := 0;
          gBarra2.Progress := 0;
          gBarra3.Progress := 0;
          gBarra4.Progress := 0;
          gBarra1.ForeColor := clRed;
          gBarra1.BackColor := clWhite;
          gBarra2.ForeColor := clRed;
          gBarra2.BackColor := clWhite;
          gBarra3.ForeColor := clRed;
          gBarra3.BackColor := clWhite;
          gBarra4.ForeColor := clRed;
          gBarra4.BackColor := clWhite;
          btnHorario.Enabled := true;
          btnLoop.Enabled := true;
        end;
  end;
procedure TForm1.btnHorarioClick(Sender: TObject);
  begin
    btnAntiHorario.Enabled := false;
    btnLoop.Enabled := false;
     for i := 0 to 100 do
      begin
       gBarra1.Progress := gBarra1.Progress + 1;
       Sleep(15)
      end;

     if gBarra1.Progress = 100 then
      begin
        gBarra2.Progress := 100;
        gBarra2.ForeColor := clWhite;
        gBarra2.BackColor := clRed;
        for i := 100 Downto 0 do
          begin
          gBarra2.Progress := gBarra2.Progress - 1;
          Sleep(15)
          end;
      end;

     if gBarra2.Progress = 0 then
      begin
        gBarra3.Progress := 90;
        gBarra3.ForeColor := clWhite;
        gBarra3.BackColor := clRed;
        for i := 100 Downto 0 do
          begin
            gBarra3.Progress := gBarra3.Progress - 1;
            Sleep(15)
          end;
      end;

     if gBarra3.Progress = 0 then
      begin
        gBarra4.Progress := 10;
        for i := 0 to 100 do
          begin
            gBarra4.Progress := gBarra4.Progress + 1;
            Sleep(15)
          end;
      end;
     if gBarra1.Progress = 100 then
        begin
          gBarra1.Progress := 0;
          gBarra2.Progress := 0;
          gBarra3.Progress := 0;
          gBarra4.Progress := 0;
          gBarra1.ForeColor := clRed;
          gBarra1.BackColor := clWhite;
          gBarra2.ForeColor := clRed;
          gBarra2.BackColor := clWhite;
          gBarra3.ForeColor := clRed;
          gBarra3.BackColor := clWhite;
          gBarra4.ForeColor := clRed;
          gBarra4.BackColor := clWhite;
          btnAntiHorario.Enabled := true;
          btnLoop.Enabled := true;
        end;
  end;


procedure TForm1.btnLoopClick(Sender: TObject);
begin
  btnAntiHorario.Enabled := false;
  btnHorario.Enabled := false;
  for i := 1 to (StrToInt(edtVoltas.Text)) do
    begin
      var i :integer;
      begin
        gBarra4.ForeColor := clWhite;
        gBarra4.BackColor := clRed;
        gBarra4.Progress := 100;
          for i := 100 downto 0 do
          begin
            gBarra4.Progress := gBarra4.Progress - 1;
            Sleep(15)
          end;
          if gBarra4.Progress = 0 then
          begin
           for i := 0 to 100 do
             begin
              gBarra3.Progress := gBarra3.Progress + 1;
              Sleep(15)
             end;
          end;
          if gBarra3.Progress = 100 then
          begin
            gBarra2.Progress := 0;
            for i := 0 to 100 do
              begin
                gBarra2.Progress := gBarra2.Progress + 1;
                Sleep(15)
              end;
          end;
          if gBarra3.Progress = 100 then
          begin
            gBarra1.Progress := 100;
            gBarra1.ForeColor := clwhite;
            gBarra1.BackColor := clRed;
          for i := 100 Downto 0 do
            begin
              gBarra1.Progress := gBarra1.Progress - 1;
              Sleep(15)
            end;
          end;
        if gBarra1.Progress = 0 then
          begin
            gBarra1.Progress := 0;
            gBarra2.Progress := 0;
            gBarra3.Progress := 0;
            gBarra4.Progress := 0;
            gBarra1.ForeColor := clRed;
            gBarra1.BackColor := clWhite;
            gBarra2.ForeColor := clRed;
            gBarra2.BackColor := clWhite;
            gBarra3.ForeColor := clRed;
            gBarra3.BackColor := clWhite;
            gBarra4.ForeColor := clRed;
            gBarra4.BackColor := clWhite;
            btnAntiHorario.Enabled := true;
            btnHorario.Enabled := true;
          end;
      end;
    end;
end;

end.
