import 'dart:io';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/write_content_file_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main(){
  late WriteContentFileUsecase writeContentFileUsecase;
  late MockFileMangementRepository mockFileMangementRepository;
  setUp((){
    mockFileMangementRepository=MockFileMangementRepository();
    writeContentFileUsecase=WriteContentFileUsecase(mockFileMangementRepository);
  });

  List<FileSystemEntity> filesAndFolders=[File('/file'),Directory('/folder')];

  test('should send and get from repo successfully',  ()async{
    when(mockFileMangementRepository.writeContentFile('/','contentTest')).thenAnswer((_)async{
      return Right(true);
    });
    final res=await writeContentFileUsecase.call('/','contentTest');
    expect(res, Right(true));
  });
}