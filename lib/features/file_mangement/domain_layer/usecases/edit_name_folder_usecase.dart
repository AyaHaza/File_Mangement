import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repository/file_mangement_repository.dart';

class EditNameFolderUsecase extends UseCseWithTwoParams {
  FileMangementRepository fileMangementRepository;
  EditNameFolderUsecase(this.fileMangementRepository);

  Future<Either<Failure, bool>> call(path,name) async {
    return await fileMangementRepository.editNameFolder(path,name);
  }
}