import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repository/file_mangement_repository.dart';

class WriteContentFileUsecase extends UseCseWithTwoParams {
  FileMangementRepository fileMangementRepository;
  WriteContentFileUsecase(this.fileMangementRepository);

  Future<Either<Failure, bool>> call(path,content) async {
    return await fileMangementRepository.writeContentFile(path,content);
  }
}