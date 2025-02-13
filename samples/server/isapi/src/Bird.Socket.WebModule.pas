unit Bird.Socket.WebModule;

interface

uses
  System.SysUtils, System.IOUtils, System.Classes, System.RegularExpressions,
  IdContext, Web.HTTPApp,
  Bird.Socket.Server;

type
  TBirdSocketWebModule = class(TWebModule)
    procedure WebModuleDestroy(Sender: TObject);
    procedure WebModuleCreate(Sender: TObject);
  private
    FBirdSocket: TBirdSocketServer;
  end;

var
  WebModuleClass: TComponentClass = TBirdSocketWebModule;

implementation

{$R *.dfm}

uses
  Bird.Socket.Types, Bird.Socket.Consts, Bird.Socket.Helpers, Bird.Socket.Connection;

procedure TBirdSocketWebModule.WebModuleCreate(Sender: TObject);
begin
  FBirdSocket := TBirdSocketServer.Create(8080);

  FBirdSocket.AddEventListener(TEventType.EXECUTE,
    procedure(const ABird: TBirdSocketConnection)
    var
      LMessage: string;
    begin
      LMessage := ABird.WaitMessage;
      if LMessage.Trim.Equals('ping') then
        ABird.Send('pong')
      else if LMessage.Trim.IsEmpty then
        ABird.Send('empty message')
      else
        ABird.Send(Format('message received: "%s"', [LMessage]));
    end);

  FBirdSocket.Start;
end;

procedure TBirdSocketWebModule.WebModuleDestroy(Sender: TObject);
begin
  try
    FBirdSocket.Stop;
  finally
    FBirdSocket.Free;
  end;
end;

end.
