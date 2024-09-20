import 'package:alpha_test/features/file_mangement/domain_layer/usecases/edit_name_folder_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main(){
  late EditNameFolderUsecase editNameFolderUsecase;
  late MockFileMangementRepository mockFileMangementRepository;
  setUp((){
    mockFileMangementRepository=MockFileMangementRepository();
    editNameFolderUsecase=EditNameFolderUsecase(mockFileMangementRepository);
  });

  test('should send and get from repo successfully',  ()async{
    when(mockFileMangementRepository.editNameFolder('/', 'testEditFolder')).thenAnswer((_)async{
      return Right(true);
    });
    final res=await editNameFolderUsecase.call('/','testEditFolder');
    expect(res, Right(true));
  });
}