
import 'dart:io';
import 'package:dartz/dartz.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain_layer/repository/file_mangement_repository.dart';
import '../data_source/local/file_mangement_api_service.dart';

class FileMangementRepositoryImp implements FileMangementRepository{
  FileMangementApiService fileMangementApiService;
  FileMangementRepositoryImp(this.fileMangementApiService);
  @override
  Future<Either<Failure, List<FileSystemEntity>>> getFilesAndFolders()async{
    try{
      final res =await fileMangementApiService.getFilesAndFolders();
      return Right(res);
    }on FileMangemtException catch(e){
      return Left(FileMangemtFailure(e.meesage));
    }
  }

  @override
  Future<Either<Failure, bool>> createFile(path, name)async{
    try{
      final res =await fileMangementApiService.createFile(path, name);
      return Right(res);
    }on FileMangemtException catch(e){
      return Left(FileMangemtFailure(e.meesage));
    }
  }

  @override
  Future<Either<Failure, bool>> createFolder(path, name)async{
    try{
      final res =await fileMangementApiService.createFolder(path, name);
      return Right(res);
    }on FileMangemtException catch(e){
      return Left(FileMangemtFailure(e.meesage));
    }
  }

  @override
  Future<Either<Failure, dynamic>> getContentFile(path)async{
    try{
      final res =await fileMangementApiService.getContentFile(path);
      return Right(res);
    }on FileMangemtException catch(e){
      return Left(FileMangemtFailure(e.meesage));
    }
  }

  @override
  Future<Either<Failure, bool>> writeContentFile(path, content)async{
    try{
      final res =await fileMangementApiService.writeContentFile(path,content);
      return Right(res);
    }on FileMangemtException catch(e){
      return Left(FileMangemtFailure(e.meesage));
    }
  }

  @override
  Future<Either<Failure, bool>> editNameFile(path, name)async{
    try{
      final res =await fileMangementApiService.editNameFile(path,name);
      return Right(res);
    }on FileMangemtException catch(e){
      return Left(FileMangemtFailure(e.meesage));
    }
  }

  @override
  Future<Either<Failure, bool>> editNameFolder(path, name)async{
    try{
      final res =await fileMangementApiService.editNameFolder(path,name);
      return Right(res);
    }on FileMangemtException catch(e){
      return Left(FileMangemtFailure(e.meesage));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteFile(path)async{
    try{
      final res =await fileMangementApiService.deleteFile(path);
      return Right(res);
    }on FileMangemtException catch(e){
      return Left(FileMangemtFailure(e.meesage));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteFolder(path)async{
    try{
      final res =await fileMangementApiService.deleteFolder(path);
      return Right(res);
    }on FileMangemtException catch(e){
      return Left(FileMangemtFailure(e.meesage));
    }
  }

  @override
  Future<Either<Failure, List<FileSystemEntity>>> getSubFilesAndFolders(path)async{
    try{
      final res =await fileMangementApiService.getSubFilesAndFolders(path);
      return Right(res);
    }on FileMangemtException catch(e){
      return Left(FileMangemtFailure(e.meesage));
    }
  }

}