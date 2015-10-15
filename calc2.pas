unit Calc2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    result: TRichEdit;
    Label1: TLabel;
    veme: TEdit;
    vepw: TEdit;
    Label2: TLabel;
    btnVel: TButton;
    Label3: TLabel;
    meve: TEdit;
    Label4: TLabel;
    mepw: TEdit;
    btnMe: TButton;
    psi: TEdit;
    Label5: TLabel;
    btnBar: TButton;
    Label6: TLabel;
    bar: TEdit;
    btnPsi: TButton;
    jftlb: TEdit;
    Label7: TLabel;
    btnlbstjo: TButton;
    Label8: TLabel;
    jls: TEdit;
    btnJlstft: TButton;
    btnClear: TButton;
    btnClearRes: TButton;
    btnClearAll: TButton;
    procedure btnVelClick(Sender: TObject);
    procedure btnMeClick(Sender: TObject);
    procedure btnBarClick(Sender: TObject);
    procedure btnPsiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnlbstjoClick(Sender: TObject);
    procedure btnJlstftClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnClearResClick(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fnts : integer;
  vel : real;

implementation

{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);

begin

  fnts := strtoint(InputBox('Font Size','Enter your desired font size which must be a whole number.',''));
  result.Clear;
  result.Font.Size := fnts;
end;

procedure TForm1.btnVelClick(Sender: TObject);
  var vemev, vepwv : real;
      vels : string;
begin
  result.Clear;
  vemev := strtofloat(veme.Text);
  vepwv := strtofloat(vepw.Text);
  vel := vemev*450240/vepwv;
  vel := sqrt(vel);
  vels := Format('%.2f', [vel]);
  result.Lines.Add('The velocity of an air rifle with a muzzle energy of ' + floattostr(vemev) + 'foot-pounds and pellet weight of ' + floattostr(vepwv) + 'grains is ' + vels + 'ft/s.');
end;

procedure TForm1.btnMeClick(Sender: TObject);
  var mepwv, mevev, mev : real;
      mevs : string;
begin
  result.Clear;
  mepwv := strtofloat(mepw.Text);
  mevev := strtofloat(meve.Text);
  mev := mepwv * sqr(mevev);
  mev := mev/450240;
  mevs := Format('%.2f', [mev]);
  result.Lines.Add('The muzzle energy of an air rifle with a velocity of ' + floattostr(mevev) + 'ft/s and pellet weight of ' + floattostr(mepwv) + 'grains is ' + mevs + 'foot-pounds.');
end;

procedure TForm1.btnBarClick(Sender: TObject);
  var psiv, barv : real;
      barvs : string;
begin
  result.Clear;
  psiv := strtofloat(psi.Text);
  barv := psiv/14.50377;
  barvs := Format('%.5f', [barv]);
  result.Lines.Add(floattostr(psiv) + 'psi is ' + barvs + 'bars.');
end;

procedure TForm1.btnPsiClick(Sender: TObject);
  var brv, psiv : real;
    psivs : string;
begin
  result.Clear;
  brv := strtofloat(bar.Text);
  psiv := brv*14.50377;
  psivs := Format('%.5f', [psiv]);
  result.Lines.Add(floattostr(brv) + 'bar is ' + psivs + 'psi.')

end;

procedure TForm1.btnlbstjoClick(Sender: TObject);
  var me, jou : real;
      jis : string;
begin
  result.Clear;
  me := strtofloat(jftlb.Text);
  jou := me*1.35581803891496;
  jis := Format('%.5f', [jou]);
  result.Lines.Add(floattostr(me) + 'lbs/ft is ' + jis + 'joules.');
end;

procedure TForm1.btnJlstftClick(Sender: TObject);
  var jou, me : real;
      mes : string;
begin
  result.Lines.Clear;
  jou := strtofloat(jls.Text);
  me := jou/1.35581803891496;
  mes := Format('%.2f',[me]);
  result.Lines.Add(floattostr(jou) + 'joules is ' + mes + 'lbs/feet');
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  jls.Text := '';
  jftlb.Text := '';
  bar.Text := '';
  psi.Text := '';
  mepw.Text := '';
  meve.Text := '';
  vepw.Text := '';
  veme.Text := '';
end;

procedure TForm1.btnClearResClick(Sender: TObject);
begin
  result.Clear;
end;

procedure TForm1.btnClearAllClick(Sender: TObject);
begin
  jls.Text := '';
  jftlb.Text := '';
  bar.Text := '';
  psi.Text := '';
  mepw.Text := '';
  meve.Text := '';
  vepw.Text := '';
  veme.Text := '';
  result.Lines.Clear;
end;
end.
