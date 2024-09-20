import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repository/file_mangement_repository.dart';

class DeleteFileUsecase extends UseCase {
  FileMangementRepository fileMangementRepository;
  DeleteFileUsecase(this.fileMangementRepository);

  Future<Either<Failure, bool>> call(path) async {
    return await fileMangementRepository.deleteFile(path);
  }
}