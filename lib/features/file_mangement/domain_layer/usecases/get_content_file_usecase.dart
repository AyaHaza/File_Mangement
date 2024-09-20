import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repository/file_mangement_repository.dart';

class GetContentFileUsecase extends UseCase{
  FileMangementRepository fileMangementRepository;
  GetContentFileUsecase(this.fileMangementRepository);

  Future<Either<Failure, dynamic>> call(path) async {
    return await fileMangementRepository.getContentFile(path);
  }
}