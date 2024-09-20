import 'package:alpha_test/features/file_mangement/domain_layer/usecases/create_folder_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main(){
  late CreateFolderUsecase createFolderUsecase;
  late MockFileMangementRepository mockFileMangementRepository;
  setUp((){
    mockFileMangementRepository=MockFileMangementRepository();
    createFolderUsecase=CreateFolderUsecase(mockFileMangementRepository);
  });

  test('should send and get from repo successfully',  ()async{
    when(mockFileMangementRepository.createFolder('/', 'testFolder')).thenAnswer((_)async{
      return Right(true);
    });
    final res=await createFolderUsecase.call('/','testFolder');
    expect(res, Right(true));
  });
}