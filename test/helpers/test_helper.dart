import 'package:mockito/annotations.dart';
import 'package:alpha_test/features/file_mangement/data_layer/data_source/local/file_mangement_api_service.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/repository/file_mangement_repository.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/creat_file_usecase.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/create_folder_usecase.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/delete_file_usecase.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/delete_folder_usecase.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/edit_name_file_usecase.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/edit_name_folder_usecase.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/get_content_file_usecase.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/get_files_and_folders_usecase.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/get_sub_files_and_folders_usecase.dart';
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/write_content_file_usecase.dart';

@GenerateMocks(
  [
    CreatFileUsecase,
    CreateFolderUsecase,
    DeleteFileUsecase,
    DeleteFolderUsecase,
    EditNameFileUsecase,
    EditNameFolderUsecase,
    GetContentFileUsecase,
    GetFilesAndFoldersUsecase,
    GetSubFilesAndFoldersUsecase,
    WriteContentFileUsecase,
    FileMangementRepository,
    FileMangementApiService
  ],
)
void main(){

}