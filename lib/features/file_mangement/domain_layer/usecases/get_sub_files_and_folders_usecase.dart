import 'dart:io';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repository/file_mangement_repository.dart';

class GetSubFilesAndFoldersUsecase extends UseCase {
  FileMangementRepository fileMangementRepository;
  GetSubFilesAndFoldersUsecase(this.fileMangementRepository);

  Future<Either<Failure, List<FileSystemEntity>>> call(path) async {
    return await fileMangementRepository.getSubFilesAndFolders(path);
  }
}