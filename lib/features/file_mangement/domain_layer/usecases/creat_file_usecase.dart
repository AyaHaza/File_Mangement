import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repository/file_mangement_repository.dart';

class CreatFileUsecase extends UseCseWithTwoParams{
  FileMangementRepository fileMangementRepository;
  CreatFileUsecase(this.fileMangementRepository);

  Future<Either<Failure, bool>> call(path, name) async {
    return await fileMangementRepository.createFile(path,name);
  }
}