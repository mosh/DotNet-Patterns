namespace HostedConsoleApplication;

uses
  Microsoft.Extensions.Hosting;

type
  MyService = public class(IHostedService)
  public

    method StartAsync(cancellationToken: System.Threading.CancellationToken): Task;
    begin
      exit Task.CompletedTask;
    end;

    method StopAsync(cancellationToken: System.Threading.CancellationToken): Task;
    begin
      exit Task.CompletedTask;
    end;

  end;

end.