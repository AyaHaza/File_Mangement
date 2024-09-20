import 'dart:io';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/get_files_and_folders_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main(){
  late GetFilesAndFoldersUsecase getFilesAndFoldersUsecase;
  late MockFileMangementRepository mockFileMangementRepository;
  setUp((){
    mockFileMangementRepository=MockFileMangementRepository();
    getFilesAndFoldersUsecase=GetFilesAndFoldersUsecase(mockFileMangementRepository);
  });

  List<FileSystemEntity> filesAndFolders=[File('/file'),Directory('/folder')];

  test('should send and get from repo successfully',  ()async{
    when(mockFileMangementRepository.getFilesAndFolders()).thenAnswer((_)async{
      return Right(filesAndFolders);
    });
    final res=await getFilesAndFoldersUsecase.call('get');
    expect(res, Right(filesAndFolders));
  });
}