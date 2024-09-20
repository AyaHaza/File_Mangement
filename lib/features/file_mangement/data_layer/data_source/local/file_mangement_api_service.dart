import 'dart:io';

abstract class FileMangementApiService{
  Future<List<FileSystemEntity>> getFilesAndFolders();
  Future<bool> createFile(path,name);
  Future<bool> createFolder(path,name);
  Future<dynamic> getContentFile(path);
  Future<bool> writeContentFile(path,content);
  Future<bool> editNameFile(path,name);
  Future<bool> editNameFolder(path,name);
  Future<bool> deleteFile(path);
  Future<bool> deleteFolder(path);
  Future<List<FileSystemEntity>> getSubFilesAndFolders(path);
}