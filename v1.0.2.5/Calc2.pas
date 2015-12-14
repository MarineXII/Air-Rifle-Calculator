unit Calc2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, ShellApi;

type
  TForm1 = class(TForm)
    result: TRichEdit;
    btnVel: TButton;
    btnMe: TButton;
    btnBar: TButton;
    btnPsi: TButton;
    btnlbstjo: TButton;
    btnJlstft: TButton;
    btnMsSS: TButton;
    btnFpsSS: TButton;
    btnGrtoGram: TButton;
    veme: TEdit;
    vepw: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    mepw: TEdit;
    meve: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    psi: TEdit;
    Label5: TLabel;
    bar: TEdit;
    Label6: TLabel;
    jftlb: TEdit;
    Label7: TLabel;
    jls: TEdit;
    Label8: TLabel;
    inmsvss: TEdit;
    Label9: TLabel;
    infpsvss: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Clear: TButton;
    ClearAll: TButton;
    ClearResult: TButton;
    imgHeader: TImage;
    Label12: TLabel;
    graintogram: TEdit;
    btnGraTograin: TButton;
    gramtograin: TEdit;
    Label13: TLabel;
    yardtometer: TEdit;
    btnYrdtoMtr: TButton;
    Label14: TLabel;
    mtrtoyrd: TEdit;
    btnMtrToYrd: TButton;
    procedure btnVelClick(Sender: TObject);
    procedure btnMeClick(Sender: TObject);
    procedure btnBarClick(Sender: TObject);
    procedure btnPsiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnlbstjoClick(Sender: TObject);
    procedure btnJlstftClick(Sender: TObject);
    procedure btnClearResClick(Sender: TObject);
    procedure btnMsSSClick(Sender: TObject);
    procedure btnFpsSSClick(Sender: TObject);
    procedure btnGrtoGramClick(Sender: TObject);
    procedure ClearResultClick(Sender: TObject);
    procedure btnGraTograinClick(Sender: TObject);
    procedure ClearAllClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure btnYrdtoMtrClick(Sender: TObject);
    procedure btnMtrToYrdClick(Sender: TObject);

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

  result.Clear;
  fnts := strtoint(InputBox('Font Size','Enter your desired font size which must be a whole number.',''));
  result.Font.Size := fnts;
end;

procedure TForm1.btnVelClick(Sender: TObject);
  var vemev, vepwv : extended;
      vels : string;
      vemevi, vepwvi : integer;
begin
  result.Clear;
  Val(veme.Text, vemev, vemevi);
  Val(vepw.Text, vepwv, vepwvi);
  vel := vemev*450240/vepwv;
  vel := sqrt(vel);
  vels := Format('%.5f', [vel]);
  result.Lines.Add('The velocity of an air rifle with a muzzle energy of ' + floattostr(vemev) + 'foot-pounds and pellet weight of ' + floattostr(vepwv) + 'grains is ' + vels + 'ft/s.');
end;

procedure TForm1.btnMeClick(Sender: TObject);
  var mepwv, mevev, mev : real;
      mevs : string;
      mepwvi, mevevi : integer;
begin
  result.Clear;
  Val(meve.Text, mevev, mevevi);
  Val(mepw.Text, mepwv, mepwvi);
  mev := mepwv * sqr(mevev);
  mev := mev/450240;
  mevs := Format('%.5f', [mev]);
  result.Lines.Add('The muzzle energy of an air rifle with a velocity of ' + floattostr(mevev) + 'ft/s and pellet weight of ' + floattostr(mepwv) + 'grains is ' + mevs + 'foot-pounds.');
end;

procedure TForm1.btnBarClick(Sender: TObject);
  var psiv, barv : real;
      barvs : string;
      psii : integer;
begin
  result.Clear;
  Val(psi.Text, psiv, psii);
  barv := psiv/14.50377;
  barvs := Format('%.5f', [barv]);
  result.Lines.Add(floattostr(psiv) + 'psi is ' + barvs + 'bars.');
end;

procedure TForm1.btnPsiClick(Sender: TObject);
  var brv, psiv : real;
      psivs : string;
      bri : integer;
begin
  result.Clear;
  Val(bar.Text, brv, bri);
  psiv := brv*14.50377;
  psivs := Format('%.5f', [psiv]);
  result.Lines.Add(floattostr(brv) + 'bar is ' + psivs + 'psi.')

end;

procedure TForm1.btnlbstjoClick(Sender: TObject);
  var me, jou : real;
      jis : string;
      mei : integer;
begin
  result.Clear;
  Val(jftlb.Text, me, mei);
  jou := me*1.35581803891496;
  jis := Format('%.5f', [jou]);
  result.Lines.Add(floattostr(me) + 'lbs/ft is ' + jis + 'joules.');
end;

procedure TForm1.btnJlstftClick(Sender: TObject);
  var jou, me : real;
      mes : string;
      joui : integer;
begin
  result.Lines.Clear;
  Val(jls.Text, jou, joui);
  me := jou/1.35581803891496;
  mes := Format('%.5f',[me]);
  result.Lines.Add(floattostr(jou) + 'joules is ' + mes + 'lbs/feet');
end;

procedure TForm1.btnClearResClick(Sender: TObject);
begin
  result.Clear;
end;

//1fps = 0.3048m/s
//Sound = 340.29m/s at sea level

procedure TForm1.btnMsSSClick(Sender: TObject);
  var velms : real;
      velmi : integer;
begin
  result.Lines.Clear;
  Val(inmsvss.Text, velms, velmi);
  if velms > 340.29 then
    result.Lines.Add(floattostr(velms) + 'm/s is faster than the speed of sound at sea level.')
  else if velms < 340.29 then
    result.Lines.Add(floattostr(velms) + 'm/s is slower than the speed of sound at sea level.')
  else if velms = 340.29 then
    result.Lines.Add(floattostr(velms) + 'm/s is the same as the speed of sound at sea level.')
end;

procedure TForm1.btnFpsSSClick(Sender: TObject);
  var velfps, velms : real;
      velfpsi : integer;
begin
  result.Lines.Clear;
  Val(infpsvss.Text, velfps, velfpsi);
  velms := velfps * 0.3048;
  if velms > 340.29 then
    result.Lines.Add(floattostr(velfps) + 'fps is faster than the speed of sound at sea level.')
  else if velms < 340.29 then
    result.Lines.Add(floattostr(velfps) + 'fps is slower than the speed of sound at sea level.')
  else if velms = 340.29 then
    result.Lines.Add(floattostr(velfps) + 'fps is the same as the speed of sound at sea level.');
end;

procedure TForm1.btnGrtoGramClick(Sender: TObject);
  var grai, gram : real;
      grams : string;
      graii : integer;
begin
  result.Clear;
  Val(graintogram.Text, grai, graii);
  gram := grai * 0.06479891;
  grams := Format('%.5f', [gram]);
  result.Lines.Add(floattostr(grai) + 'grains is ' + grams +'g.');
end;

procedure TForm1.ClearResultClick(Sender: TObject);
begin
  result.Clear;
end;

procedure TForm1.btnGraTograinClick(Sender: TObject);
var grai, gram : real;
    grains : string;
    graii : integer;
begin
result.Clear;
  Val(gramtograin.Text, gram, graii);
  grai := gram / 0.06479891;
  grains := Format('%.5f', [grai]);
  result.Lines.Add(floattostr(gram) + 'grams is ' + grains +'gr.');
end;

procedure TForm1.ClearAllClick(Sender: TObject);
begin
  jls.Text := '';
  jftlb.Text := '';
  bar.Text := '';
  psi.Text := '';
  mepw.Text := '';
  meve.Text := '';
  vepw.Text := '';
  veme.Text := '';
  inmsvss.Text := '';
  infpsvss.Text := '';
  gramtograin.Text := '';
  graintogram.Text := '';
  yardtometer.Text := '';
  mtrtoyrd.Text := '';
  result.Lines.Clear;
end;

procedure TForm1.ClearClick(Sender: TObject);
begin
  jls.Text := '';
  jftlb.Text := '';
  bar.Text := '';
  psi.Text := '';
  mepw.Text := '';
  meve.Text := '';
  vepw.Text := '';
  veme.Text := '';
  inmsvss.Text := '';
  infpsvss.Text := '';
  yardtometer.Text := '';
  mtrtoyrd.Text := '';
end;

procedure TForm1.btnYrdtoMtrClick(Sender: TObject);
  var yar, meter : real;
      met : string;
      yari : integer;
begin
  result.Clear;
  Val(yardtometer.Text,yar ,yari);
  meter := yar * 0.9144;
  met := Format('%.5f', [meter]);
  result.Lines.Add(FloatToStr(yar) + 'yrds is ' + met + 'm.');
end;

procedure TForm1.btnMtrToYrdClick(Sender: TObject);
  var meter, yar : real;
      yard : string;
      meti : integer;
begin
  result.Clear;
  Val(mtrtoyrd.Text, meter, meti);
  yar := meter * 1.09361329833771;
  yard := Format('%.5f', [yar]);;
  result.Lines.Add(FloatToStr(meter) + 'm is ' + yard + 'yrds.');
end;

end.
