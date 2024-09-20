import 'package:alpha_test/features/file_mangement/domain_layer/usecases/delete_file_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main(){
  late DeleteFileUsecase deleteFileUsecase;
  late MockFileMangementRepository mockFileMangementRepository;
  setUp((){
    mockFileMangementRepository=MockFileMangementRepository();
    deleteFileUsecase=DeleteFileUsecase(mockFileMangementRepository);
  });

  test('should send and get from repo successfully',  ()async{
    when(mockFileMangementRepository.deleteFile('testFile')).thenAnswer((_)async{
      return Right(true);
    });
    final res=await deleteFileUsecase.call('testFile');
    expect(res, Right(true));
  });
}