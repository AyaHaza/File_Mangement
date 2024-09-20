import 'dart:io';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

abstract class FileMangementRepository{
  Future<Either<Failure, List<FileSystemEntity>>> getFilesAndFolders();
  Future<Either<Failure, bool>> createFile(path,name);
  Future<Either<Failure, bool>> createFolder(path,name);
  Future<Either<Failure, dynamic>> getContentFile(path);
  Future<Either<Failure, bool>> writeContentFile(path,content);
  Future<Either<Failure, bool>> editNameFile(path,name);
  Future<Either<Failure, bool>> editNameFolder(path,name);
  Future<Either<Failure, bool>> deleteFile(path);
  Future<Either<Failure, bool>> deleteFolder(path);
  Future<Either<Failure, List<FileSystemEntity>>> getSubFilesAndFolders(path);
}