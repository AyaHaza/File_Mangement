import 'package:alpha_test/features/file_mangement/domain_layer/usecases/edit_name_file_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main(){
  late EditNameFileUsecase editNameFileUsecase;
  late MockFileMangementRepository mockFileMangementRepository;
  setUp((){
    mockFileMangementRepository=MockFileMangementRepository();
    editNameFileUsecase=EditNameFileUsecase(mockFileMangementRepository);
  });

  test('should send and get from repo successfully',  ()async{
    when(mockFileMangementRepository.editNameFile('/', 'testEditFile')).thenAnswer((_)async{
      return Right(true);
    });
    final res=await editNameFileUsecase.call('/','testEditFile');
    expect(res, Right(true));
  });
}