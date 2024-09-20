import 'package:alpha_test/features/file_mangement/domain_layer/usecases/get_content_file_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main(){
  late GetContentFileUsecase getContentFileUsecase;
  late MockFileMangementRepository mockFileMangementRepository;
  setUp((){
    mockFileMangementRepository=MockFileMangementRepository();
    getContentFileUsecase=GetContentFileUsecase(mockFileMangementRepository);
  });

  test('should send and get from repo successfully',  ()async{
    when(mockFileMangementRepository.getContentFile('/')).thenAnswer((_)async{
      return Right(true);
    });
    final res=await getContentFileUsecase.call('/');
    expect(res, Right(true));
  });
}