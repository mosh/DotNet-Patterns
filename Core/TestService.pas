namespace Core;

uses
  Microsoft.Extensions.Logging,
  System.Threading.Tasks;

type

  TestService = public class(ITestService)
  private
    Logger:ILogger;
  public
    constructor(loggerImpl:ILogger<TestService>);
    begin
      Logger := loggerImpl;
    end;

    method SomeMethod:Task;
    begin
      await Task.Delay(TimeSpan.FromSeconds(2));
      Logger.LogInformation('Hello');
    end;
  end;

end.