namespace HostedConsoleApplication;


uses
  Microsoft.Extensions.Hosting,
  System.Linq,
  System.Threading.Tasks;

type
  Program = class
  private

    class method Main(args: array of String): Task;
    begin
      await Host.CreateDefaultBuilder(args)
        .ConfigureServices((hostContext, services) ->
          begin
            services.AddHostedService<MyService>();
          end)
        .RunConsoleAsync;
    end;

  end;

end.