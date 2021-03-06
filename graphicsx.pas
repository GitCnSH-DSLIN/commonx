unit graphicsx;
{$i delphidefs.inc}

interface

uses
{$IFDEF FMX}
  system.UITypes, system.UIConsts,
{$ELSE}
  graphics,
{$ENDIF}
  sysutils,
  typex,
  types;


{$IFDEF FMX}
const
  clBlack = claBlack;
  clSilver = claSilver;
  clGrey = claGrey;
  clNavy = claNavy;
  clBlue = claBlue;
  clGreen = claGreen;
  clLime = claLime;
  clRed = claRed;
  clMagenta = claMagenta;
  clFuchia = claMagenta;
  clCyan = claCyan;
{$ENDIF}

type
{$IFDEF FMX}
  TColor = TAlphaColor;
  TPixelFormat = (pf8bit, pf16bit, pf24Bit, pf32bit);
{$ELSE}
  TColor = graphics.TColor;
  TPixelFormat = graphics.Tpixelformat;
      //(pfDevice, pf1bit, pf4bit, pf8bit, pf15bit, pf16bit, pf24bit, pf32bit, pfCustom);
{$ENDIF}

function PixelSize(pf: TPixelFormat): ni;

implementation

function PixelSize(pf: TPixelFormat): ni;
begin
  case pf of
    pf8Bit: exit(1);
    pf16bit: exit(2);
    pf24bit: exit(3);
    pf32bit: exit(4);
  else
    raise ECritical.create('pixel format not byte size. '+inttostr(ord(pf)));
  end;
end;


end.
