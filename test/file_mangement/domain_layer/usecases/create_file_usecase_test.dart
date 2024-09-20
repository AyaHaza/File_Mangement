import 'package:alpha_test/features/file_mangement/domain_layer/usecases/creat_file_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main(){
  late CreatFileUsecase creatFileUsecase;
  late MockFileMangementRepository mockFileMangementRepository;
  setUp((){
    mockFileMangementRepository=MockFileMangementRepository();
    creatFileUsecase=CreatFileUsecase(mockFileMangementRepository);
  });

  test('should send and get from repo successfully',  ()async{
    when(mockFileMangementRepository.createFile('/', 'testFile')).thenAnswer((_)async{
      return Right(true);
    });
    final res=await creatFileUsecase.call('/','testFile');
    expect(res, Right(true));
  });
}