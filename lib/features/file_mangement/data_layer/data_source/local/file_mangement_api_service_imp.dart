
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'file_mangement_api_service.dart';


class FileMangementApiServiceImp implements FileMangementApiService{
  @override

  Future<List<FileSystemEntity>> getFilesAndFolders() async{
    try{
      var root = await getExternalStorageDirectory();
      String path=root!.path;
      print(path);
      var lengthFiles=await Directory(path).listSync();
      List<FileSystemEntity> files = List.generate(lengthFiles.length,(index) => lengthFiles[index],);
      return files;
    }catch (e){
      throw FileSystemException(e.toString());
    }
  }

  @override
  Future<bool> createFolder(path,name) async {
    try{
      Directory directory=await Directory(path);
      var pathN = directory. path;
      var lastSeparator = pathN. lastIndexOf(Platform. pathSeparator);
      var newPath = pathN. substring(0, lastSeparator + 1) + '$name';
      Directory directoryN= await Directory(newPath);
      directoryN.create();
      return true;
    }catch (e){
      throw FileSystemException(e.toString());
    }

  }

  @override
  Future<bool> createFile(path,name) async {
    try{
      File file=await File(path);
      var pathN = file. path;
      var lastSeparator = pathN. lastIndexOf(Platform. pathSeparator);
      var newPath = pathN. substring(0, lastSeparator + 1) + '$name.txt';
      File fileN= await File(newPath);
      fileN.create();
      return true;
    }catch (e){
      throw FileSystemException(e.toString());
    }

  }

  @override
  Future<dynamic> getContentFile(path) async{
    try{
      File file=await File(path);
      final content=await file.readAsString();
      print(content);
      return content;
    }catch (e){
      throw FileSystemException(e.toString());
    }

  }

  @override
  Future<bool> writeContentFile(path, content) async{
    try{
      File file=await File(path);
      await file.writeAsString(content);
      return true;
    }catch (e){
      throw FileSystemException(e.toString());
    }
  }

  @override
  Future<bool> editNameFile(path, name) async{
    try{
      File file=await File(path);
      var pathN = file. path;
      var lastSeparator = pathN. lastIndexOf(Platform. pathSeparator);
      var newPath = pathN. substring(0, lastSeparator + 1) + '$name.text';
      print(newPath);
      file. rename(newPath);
      return true;
    }catch (e){
      throw FileSystemException(e.toString());
    }

  }

  @override
  Future<bool> editNameFolder(path, name) async{
    try{
      Directory directory=await Directory(path);
      var pathN = directory. path;
      var lastSeparator = pathN. lastIndexOf(Platform. pathSeparator);
      var newPath = pathN. substring(0, lastSeparator + 1) + '$name';
      print(newPath);
      directory. rename(newPath);
      return true;
    }catch (e){
      throw FileSystemException(e.toString());
    }

  }

  @override
  Future<bool> deleteFile(path) async{
    try{
      File file=await File(path);
      file.delete(recursive: true);
      return true;
    }catch (e){
      throw FileSystemException(e.toString());
    }

  }

  @override
  Future<bool> deleteFolder(path) async{
    try{
      Directory directory=await Directory(path);
      directory.delete(recursive: true);
      return true;
    }catch (e){
      throw FileSystemException(e.toString());
    }

  }

  @override
  Future<List<FileSystemEntity>> getSubFilesAndFolders(path)async{
    try{
      var lengthFiles=await Directory(path).listSync();
      List<FileSystemEntity> files = List.generate(lengthFiles.length,(index) => lengthFiles[index],);
      return files;
    }catch (e){
      throw FileSystemException(e.toString());
    }

  }

}