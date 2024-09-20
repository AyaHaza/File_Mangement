import 'dart:io';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repository/file_mangement_repository.dart';

class GetFilesAndFoldersUsecase extends UseCase {
  FileMangementRepository fileMangementRepository;
  GetFilesAndFoldersUsecase(this.fileMangementRepository);

  Future<Either<Failure, List<FileSystemEntity>>> call(string) async {
    return await fileMangementRepository.getFilesAndFolders();
  }
}