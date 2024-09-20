import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain_layer/usecases/creat_file_usecase.dart';
import '../../domain_layer/usecases/create_folder_usecase.dart';
import '../../domain_layer/usecases/delete_file_usecase.dart';
import '../../domain_layer/usecases/delete_folder_usecase.dart';
import '../../domain_layer/usecases/edit_name_file_usecase.dart';
import '../../domain_layer/usecases/edit_name_folder_usecase.dart';
import '../../domain_layer/usecases/get_content_file_usecase.dart';
import '../../domain_layer/usecases/get_files_and_folders_usecase.dart';
import '../../domain_layer/usecases/get_sub_files_and_folders_usecase.dart';
import '../../domain_layer/usecases/write_content_file_usecase.dart';
import 'events.dart';
import 'states.dart';

List<FileSystemEntity> getList=[];
bool vaild=false;
class FileMangementBloc extends Bloc<FileMangementEvents,FileMangementStates>{
  GetFilesAndFoldersUsecase getFilesAndFoldersUsecase;
  CreatFileUsecase creatFileUsecase;
  CreateFolderUsecase createFolderUsecase;
  GetContentFileUsecase getContentFileUsecase;
  WriteContentFileUsecase writeContentFileUsecase;
  EditNameFileUsecase editNameFileUsecase;
  EditNameFolderUsecase editNameFolderUsecase;
  DeleteFileUsecase deleteFileUsecase;
  DeleteFolderUsecase deleteFolderUsecase;
  GetSubFilesAndFoldersUsecase getSubFilesAndFoldersUsecase;
  FileMangementBloc(this.getFilesAndFoldersUsecase,this.creatFileUsecase,this.createFolderUsecase,this.getContentFileUsecase,this.writeContentFileUsecase,this.editNameFileUsecase,this.editNameFolderUsecase,this.deleteFileUsecase,this.deleteFolderUsecase,this.getSubFilesAndFoldersUsecase):super(InitialState()){
    on<GetFilesAndFoldersEvent>((event, emit)async{
      emit(LoadingState());
      final result=await getFilesAndFoldersUsecase.call('get');
      result.fold(
              (failure){
            emit(ErrorState(failure.message));
          },
              (data){
                getList=data;
            emit(SuccessState(data));
          }
      );
    });

    on<CreateFileEvent>((event, emit)async{
      emit(LoadingState());
      final result=await creatFileUsecase.call(event.path,event.name);
      result.fold(
              (failure){
            emit(ErrorState(failure.message));
          },
              (data){
            emit(SuccessBoolState());
          }
      );
    });

    on<CreateFolderEvent>((event, emit)async{
      emit(LoadingState());
      final result=await createFolderUsecase.call(event.path,event.name);
      result.fold(
              (failure){
            emit(ErrorState(failure.message));
          },
              (data){
            emit(SuccessBoolState());
          }
      );
    });

    on<GetFilesContentEvent>((event, emit)async{
      emit(LoadingState());
      final result=await getContentFileUsecase.call(event.path);
      result.fold(
              (failure){
            emit(ErrorState(failure.message));
          },
              (data){
            emit(SuccessState(data));
          }
      );
    });

    on<WriteContentFileEvent>((event, emit)async{
      emit(LoadingState());
      final result=await writeContentFileUsecase.call(event.path,event.content);
      result.fold(
              (failure){
            emit(ErrorState(failure.message));
          },
              (data){
            emit(SuccessBoolState());
          }
      );
    });

    on<EditNameFileEvent>((event, emit)async{
      emit(LoadingState());
      final result=await editNameFileUsecase.call(event.path,event.name);
      result.fold(
              (failure){
            emit(ErrorState(failure.message));
          },
              (data){
            emit(SuccessBoolState());
          }
      );
    });

    on<EditNameFolderEvent>((event, emit)async{
      emit(LoadingState());
      final result=await editNameFolderUsecase.call(event.path,event.name);
      result.fold(
              (failure){
            emit(ErrorState(failure.message));
          },
              (data){
            emit(SuccessBoolState());
          }
      );
    });

    on<DeleteFileEvent>((event, emit)async{
      emit(LoadingState());
      final result=await deleteFileUsecase.call(event.path);
      result.fold(
              (failure){
            emit(ErrorState(failure.message));
          },
              (data){
            emit(SuccessBoolState());
          }
      );
    });

    on<DeleteFolderEvent>((event, emit)async{
      emit(LoadingState());
      final result=await deleteFolderUsecase.call(event.path);
      result.fold(
              (failure){
            emit(ErrorState(failure.message));
          },
              (data){
            emit(SuccessBoolState());
          }
      );
    });

    on<GetSubFilesAndFoldersEvent>((event, emit)async{
      emit(LoadingState());
      final result=await getSubFilesAndFoldersUsecase.call(event.path);
      result.fold(
              (failure){
            emit(ErrorState(failure.message));
          },
              (data){
                getList=data;
            emit(SuccessState(data));
          }
      );
    });

    on<SearchFilesAndFoldersEvent>((event, emit) async{
      emit(LoadingState());
      var searchFilesAndFoldersList=[];
      getList.forEach(
            (element) {
              var e=element.path.split('/');
          if (e.last.toString().contains(event.name)) {
            searchFilesAndFoldersList.add(element);
          }
        },
      );
      if(searchFilesAndFoldersList.isNotEmpty && searchFilesAndFoldersList.length<getList.length){
        vaild=false;
        emit(SuccessState(searchFilesAndFoldersList ));
      }else if( searchFilesAndFoldersList.length==getList.length){
        vaild=false;
        emit(SuccessState( getList));
      }else{
        FileSystemEntity fileSystemEntity=File('/no files');
        fileSystemEntity.path;
        vaild=true;
        emit(SuccessState([fileSystemEntity]));

      }
    });
  }
}