namespace ConsoleApplication;

uses
  Core,
  Microsoft.Extensions.Configuration,
  Microsoft.Extensions.DependencyInjection,
  System.IO,
  System.Threading.Tasks;

type

  Program = class
  private

  public

    class method Main(args: array of String): Task<Int32>;
    begin
      var services := ConfigureServices;
      var serviceProvider := services.BuildServiceProvider;
      await serviceProvider.GetService<ConsoleApplication>.Run;
    end;

  end;

end.