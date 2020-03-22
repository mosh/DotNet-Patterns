namespace Core;

uses
  Microsoft.Extensions.Configuration,
  System.Threading.Tasks;

type
  ConsoleApplication = public class
  private
    property TestService:ITestService;
    property Configuration:IConfiguration;

  public
    constructor(testServiceImpl:ITestService; configurationImpl:IConfiguration);
    begin
      TestService := testServiceImpl;
      Configuration := configurationImpl;
    end;

    method Run:Task;
    begin
      var location := Configuration.GetValue<String>('Location');

      await TestService.SomeMethod;
    end;
  end;

end.