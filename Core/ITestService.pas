namespace Core;

uses
  System.Threading.Tasks;

type
  ITestService = public interface
    method SomeMethod:Task;
  end;

end.