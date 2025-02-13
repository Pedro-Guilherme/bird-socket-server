program Bird.Socket.Console;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  IdContext,
  Bird.Socket.Consts in '..\..\..\src\Bird.Socket.Consts.pas',
  Bird.Socket.Connection in '..\..\..\src\Bird.Socket.Connection.pas',
  Bird.Socket.Helpers in '..\..\..\src\Bird.Socket.Helpers.pas',
  Bird.Socket.Server in '..\..\..\src\Bird.Socket.Server.pas',
  Bird.Socket.Types in '..\..\..\src\Bird.Socket.Types.pas';

var
  LBirdSocket: TBirdSocketServer;

begin
  LBirdSocket := TBirdSocketServer.Create(8080);
  try
    LBirdSocket.AddEventListener(TEventType.CONNECT,
      procedure(const ABird: TBirdSocketConnection)
      begin
        Writeln('Client connected');
        Writeln('IPAddress: ' + ABird.IPAdress);
        Writeln('ID: ' + ABird.Id.ToString);
      end);

    LBirdSocket.AddEventListener(TEventType.EXECUTE,
      procedure(const ABird: TBirdSocketConnection)
      var
        LMessage: string;
      begin
        LMessage := ABird.WaitMessage;

        if LMessage.Trim.Equals('ping') then
          ABird.Send('pong')
        else if LMessage.Trim.IsEmpty then
          ABird.Send('empty message');

        Writeln('Msg from ' + ABird.Id.ToString + ': ' + LMessage);
      end);

    LBirdSocket.AddEventListener(TEventType.DISCONNECT,
      procedure(const ABird: TBirdSocketConnection)
      begin
        Writeln('IPAddress: ' + ABird.IPAdress);
        Writeln('ID: ' + ABird.Id.ToString);
        Writeln('Client disconnected');
      end);

    LBirdSocket.Start;
    Writeln('Server running at ' + LBirdSocket.DefaultPort.ToString);
    Readln;
  finally
    LBirdSocket.Free;
  end;
end.
