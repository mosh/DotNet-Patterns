namespace WorkerServiceConsoleApplication;

uses
  Microsoft.Extensions.Hosting;

type
  Worker = public class(BackgroundService)
  protected
    method ExecuteAsync(stoppingToken: System.Threading.CancellationToken): Task; override;
    begin



      var startedTask := Task.Factory.StartNew(method begin

          while not stoppingToken.IsCancellationRequested do
          begin
          end;
          Console.WriteLine('Cancelled');


        end, stoppingToken);
      exit startedTask;



    end;

  end;

end.