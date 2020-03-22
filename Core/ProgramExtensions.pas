namespace Core;

uses
  ConsoleApplication,
  Microsoft.Extensions.Configuration,
  Microsoft.Extensions.DependencyInjection,
  Microsoft.Extensions.Logging,
  System.IO;

type
  ProgramExtensions = public extension class(Program)

    class method LoadConfiguration:IConfiguration;
    begin
      var builder := new ConfigurationBuilder()
              .SetBasePath(Directory.GetCurrentDirectory)
              .AddJsonFile('appsettings.json', true, true);
      exit builder.Build();
    end;

    class method ConfigureServices:IServiceCollection;
    begin
      var services := new ServiceCollection;

      var config := LoadConfiguration;


      services.AddLogging(logging ->
        begin
          logging.AddConfiguration(config.GetSection('Logging'));
          logging.AddConsole;
        end).Configure<LoggerFilterOptions>(options ->options.MinLevel = LogLevel.Information);

      services.AddSingleton(config);

      services.AddTransient<ITestService,TestService>;
      services.AddTransient<ConsoleApplication>;


      exit services;
    end;

  end;

end.