import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repository/file_mangement_repository.dart';

class DeleteFolderUsecase extends UseCase {
  FileMangementRepository fileMangementRepository;
  DeleteFolderUsecase(this.fileMangementRepository);

  Future<Either<Failure, bool>> call(path) async {
    return await fileMangementRepository.deleteFolder(path);
  }
}