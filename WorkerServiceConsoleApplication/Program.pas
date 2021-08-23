namespace WorkerServiceConsoleApplication;

uses
  Microsoft.Extensions.Hosting,
  System.Linq;

type

  // https://wakeupandcode.com/worker-service-in-net-core-3-1/

  Program = class
  public
    class method Main(args: array of String): Int32;
    begin
      CreateHostBuilder(args).Build.Run;
    end;

    class method CreateHostBuilder(args:array of String):IHostBuilder;
    begin
      var hostBuilder := Host.CreateDefaultBuilder(args);

      hostBuilder.ConfigureServices(services -> begin
          services.AddHostedService<Worker>;
        end);

      exit hostBuilder;
    end;

  end;


end.