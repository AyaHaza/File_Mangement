
abstract class FileMangementStates{}

class InitialState extends FileMangementStates{}
class LoadingState extends FileMangementStates{}
class SuccessState extends FileMangementStates{
  var data;
  SuccessState(this.data);
}
class SuccessSearchState extends FileMangementStates{
  var data;
  SuccessSearchState(this.data);
}
class SuccessBoolState extends FileMangementStates{}
class ErrorState extends FileMangementStates{
  String failure;
  ErrorState(this.failure);
}

