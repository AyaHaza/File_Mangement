import 'dart:io';
import 'package:alpha_test/core/error/exception.dart';
import 'package:alpha_test/core/error/failure.dart';
import 'package:alpha_test/features/file_mangement/data_layer/repository/file_mangement_repository_imp.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';


void main(){
  late MockFileMangementApiService mockFileMangementApiService;
  late FileMangementRepositoryImp fileMangementRepositoryImp;

  setUp((){
    mockFileMangementApiService=MockFileMangementApiService();
    fileMangementRepositoryImp=FileMangementRepositoryImp(mockFileMangementApiService);
  });


  List<FileSystemEntity> filesAndFolders=[File('/file'),Directory('/folder')];


  group('get Files And Folders', (){
    test("success", ()async{
      when(mockFileMangementApiService.getFilesAndFolders()).thenAnswer((_)async=>filesAndFolders);
      final res=await fileMangementRepositoryImp.getFilesAndFolders();
      expect(res, Right(filesAndFolders));
    });

    test('failure so return File Mangement Failure', ()async{
      when(mockFileMangementApiService.getFilesAndFolders()).thenThrow(FileMangemtException("An error has occurred"));
      final res=await fileMangementRepositoryImp.getFilesAndFolders();
      expect(res, Left(FileMangemtFailure("An error has occurred")));
    });
  });

  group('create File', (){
    test("success", ()async{
      when(mockFileMangementApiService.createFile('/', 'test')).thenAnswer((_)async=>true);
      final res=await fileMangementRepositoryImp.createFile('/', 'test');
      expect(res, Right(true));
    });

    test('failure so return File Mangement Failure', ()async{
      when(mockFileMangementApiService.createFile('/', 'test')).thenThrow(FileMangemtException("An error has occurred"));
      final res=await fileMangementRepositoryImp.createFile('/', 'test');
      expect(res, Left(FileMangemtFailure("An error has occurred")));
    });
  });

  group('create Folder', (){
    test("success", ()async{
      when(mockFileMangementApiService.createFolder('/', 'test')).thenAnswer((_)async=>true);
      final res=await fileMangementRepositoryImp.createFolder('/', 'test');
      expect(res, Right(true));
    });

    test('failure so return File Mangement Failure', ()async{
      when(mockFileMangementApiService.createFolder('/', 'test')).thenThrow(FileMangemtException("An error has occurred"));
      final res=await fileMangementRepositoryImp.createFolder('/', 'test');
      expect(res, Left(FileMangemtFailure("An error has occurred")));
    });
  });

  group('get content file', (){
    test("success", ()async{
      when(mockFileMangementApiService.getContentFile('test')).thenAnswer((_)async=>true);
      final res=await fileMangementRepositoryImp.getContentFile('test');
      expect(res, Right(true));
    });

    test('failure so return File Mangement Failure', ()async{
      when(mockFileMangementApiService.getContentFile('test')).thenThrow(FileMangemtException("An error has occurred"));
      final res=await fileMangementRepositoryImp.getContentFile('test');
      expect(res, Left(FileMangemtFailure("An error has occurred")));
    });
  });

  group('write content file', (){
    test("success", ()async{
      when(mockFileMangementApiService.writeContentFile('/','test')).thenAnswer((_)async=>true);
      final res=await fileMangementRepositoryImp.writeContentFile('/','test');
      expect(res, Right(true));
    });

    test('failure so return File Mangement Failure', ()async{
      when(mockFileMangementApiService.writeContentFile('/','test')).thenThrow(FileMangemtException("An error has occurred"));
      final res=await fileMangementRepositoryImp.writeContentFile('/','test');
      expect(res, Left(FileMangemtFailure("An error has occurred")));
    });
  });

  group('edit name file', (){
    test("success", ()async{
      when(mockFileMangementApiService.editNameFile('/','test')).thenAnswer((_)async=>true);
      final res=await fileMangementRepositoryImp.editNameFile('/','test');
      expect(res, Right(true));
    });

    test('failure so return File Mangement Failure', ()async{
      when(mockFileMangementApiService.editNameFile('/','test')).thenThrow(FileMangemtException("An error has occurred"));
      final res=await fileMangementRepositoryImp.editNameFile('/','test');
      expect(res, Left(FileMangemtFailure("An error has occurred")));
    });
  });

  group('edit name folder', (){
    test("success", ()async{
      when(mockFileMangementApiService.editNameFolder('/','test')).thenAnswer((_)async=>true);
      final res=await fileMangementRepositoryImp.editNameFolder('/','test');
      expect(res, Right(true));
    });

    test('failure so return File Mangement Failure', ()async{
      when(mockFileMangementApiService.editNameFolder('/','test')).thenThrow(FileMangemtException("An error has occurred"));
      final res=await fileMangementRepositoryImp.editNameFolder('/','test');
      expect(res, Left(FileMangemtFailure("An error has occurred")));
    });
  });

  group('delete file', (){
    test("success", ()async{
      when(mockFileMangementApiService.deleteFile('/')).thenAnswer((_)async=>true);
      final res=await fileMangementRepositoryImp.deleteFile('/');
      expect(res, Right(true));
    });

    test('failure so return File Mangement Failure', ()async{
      when(mockFileMangementApiService.deleteFile('/')).thenThrow(FileMangemtException("An error has occurred"));
      final res=await fileMangementRepositoryImp.deleteFile('/');
      expect(res, Left(FileMangemtFailure("An error has occurred")));
    });
  });

  group('delete folder', (){
    test("success", ()async{
      when(mockFileMangementApiService.deleteFolder('/')).thenAnswer((_)async=>true);
      final res=await fileMangementRepositoryImp.deleteFolder('/');
      expect(res, Right(true));
    });

    test('failure so return File Mangement Failure', ()async{
      when(mockFileMangementApiService.deleteFolder('/')).thenThrow(FileMangemtException("An error has occurred"));
      final res=await fileMangementRepositoryImp.deleteFolder('/');
      expect(res, Left(FileMangemtFailure("An error has occurred")));
    });
  });

  group('get sub files and folder', (){
    test("success", ()async{
      when(mockFileMangementApiService.getSubFilesAndFolders('/')).thenAnswer((_)async=>filesAndFolders);
      final res=await fileMangementRepositoryImp.getSubFilesAndFolders('/');
      expect(res, Right(filesAndFolders));
    });

    test('failure so return File Mangement Failure', ()async{
      when(mockFileMangementApiService.getSubFilesAndFolders('/')).thenThrow(FileMangemtException("An error has occurred"));
      final res=await fileMangementRepositoryImp.getSubFilesAndFolders('/');
      expect(res, Left(FileMangemtFailure("An error has occurred")));
    });
  });
}