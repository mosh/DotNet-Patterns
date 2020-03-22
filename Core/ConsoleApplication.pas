namespace Core;

uses
  Microsoft.Extensions.Configuration,
  Microsoft.Extensions.Logging,
  System.Threading.Tasks;

type
  ConsoleApplication = public class
  private
    property TestService:ITestService;
    property Configuration:IConfiguration;
    property Logger:ILogger;

  public
    constructor(testServiceImpl:ITestService; configurationImpl:IConfiguration; loggerImpl:ILogger<ConsoleApplication>);
    begin
      TestService := testServiceImpl;
      Configuration := configurationImpl;
      Logger := loggerImpl;
    end;

    method Run:Task;
    begin
      var location := Configuration.GetValue<String>('Location');
      Logger.LogInformation($'Location is {location}');
      await TestService.SomeMethod;
    end;
  end;

end.