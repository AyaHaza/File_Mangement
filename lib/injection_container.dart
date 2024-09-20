
import 'package:get_it/get_it.dart';

import 'features/file_mangement/data_layer/data_source/local/file_mangement_api_service.dart';
import 'features/file_mangement/data_layer/data_source/local/file_mangement_api_service_imp.dart';
import 'features/file_mangement/data_layer/repository/file_mangement_repository_imp.dart';
import 'features/file_mangement/domain_layer/repository/file_mangement_repository.dart';
import 'features/file_mangement/domain_layer/usecases/creat_file_usecase.dart';
import 'features/file_mangement/domain_layer/usecases/create_folder_usecase.dart';
import 'features/file_mangement/domain_layer/usecases/delete_file_usecase.dart';
import 'features/file_mangement/domain_layer/usecases/delete_folder_usecase.dart';
import 'features/file_mangement/domain_layer/usecases/edit_name_file_usecase.dart';
import 'features/file_mangement/domain_layer/usecases/edit_name_folder_usecase.dart';
import 'features/file_mangement/domain_layer/usecases/get_content_file_usecase.dart';
import 'features/file_mangement/domain_layer/usecases/get_files_and_folders_usecase.dart';
import 'features/file_mangement/domain_layer/usecases/get_sub_files_and_folders_usecase.dart';
import 'features/file_mangement/domain_layer/usecases/write_content_file_usecase.dart';
import 'features/file_mangement/presentation_layer/bloc/bloc.dart';

final sl=GetIt.instance;

Future <void> initializeDependencies()async{

  //FileMangement
  sl.registerSingleton<FileMangementApiService>(FileMangementApiServiceImp());
  sl.registerSingleton<FileMangementRepository>(FileMangementRepositoryImp(sl()));
  sl.registerSingleton<GetFilesAndFoldersUsecase>(GetFilesAndFoldersUsecase(sl()));
  sl.registerSingleton<CreatFileUsecase>(CreatFileUsecase(sl()));
  sl.registerSingleton<CreateFolderUsecase>(CreateFolderUsecase(sl()));
  sl.registerSingleton<GetContentFileUsecase>(GetContentFileUsecase(sl()));
  sl.registerSingleton<WriteContentFileUsecase>(WriteContentFileUsecase(sl()));
  sl.registerSingleton<EditNameFileUsecase>(EditNameFileUsecase(sl()));
  sl.registerSingleton<EditNameFolderUsecase>(EditNameFolderUsecase(sl()));
  sl.registerSingleton<DeleteFileUsecase>(DeleteFileUsecase(sl()));
  sl.registerSingleton<DeleteFolderUsecase>(DeleteFolderUsecase(sl()));
  sl.registerSingleton<GetSubFilesAndFoldersUsecase>(GetSubFilesAndFoldersUsecase(sl()));
  sl.registerFactory<FileMangementBloc>(()=>FileMangementBloc(sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl()));


}