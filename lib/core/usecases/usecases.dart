abstract class UseCase<Type,Params>{
  Future<Type> call(Params params);
}

abstract class UseCseWithTwoParams<Type,Params,ParamsTwo>{
  Future<Type> call(Params params,ParamsTwo paramsTwo);
}