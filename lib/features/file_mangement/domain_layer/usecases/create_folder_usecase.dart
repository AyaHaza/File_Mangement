import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repository/file_mangement_repository.dart';

class CreateFolderUsecase extends UseCseWithTwoParams {
  FileMangementRepository fileMangementRepository;
  CreateFolderUsecase(this.fileMangementRepository);

  Future<Either<Failure, bool>> call(path, name) async {
    return await fileMangementRepository.createFolder(path, name);
  }
}