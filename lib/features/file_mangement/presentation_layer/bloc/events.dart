

abstract class FileMangementEvents{}

class GetFilesAndFoldersEvent extends FileMangementEvents{}

class CreateFileEvent extends FileMangementEvents{
  String path;
  String name;
  CreateFileEvent(this.path,this.name);
}
class CreateFolderEvent extends FileMangementEvents{
  String path;
  String name;
  CreateFolderEvent(this.path,this.name);
}

class GetFilesContentEvent extends FileMangementEvents{
  String path;
  GetFilesContentEvent(this.path);
}
class WriteContentFileEvent extends FileMangementEvents{
  String path;
  String content;
  WriteContentFileEvent(this.path,this.content);
}
class EditNameFileEvent extends FileMangementEvents{
  String path;
  String name;
  EditNameFileEvent(this.path,this.name);
}
class EditNameFolderEvent extends FileMangementEvents{
  String path;
  String name;
  EditNameFolderEvent(this.path,this.name);
}
class DeleteFolderEvent extends FileMangementEvents{
  String path;
  DeleteFolderEvent(this.path);
}
class DeleteFileEvent extends FileMangementEvents{
  String path;
  DeleteFileEvent(this.path);
}
class GetSubFilesAndFoldersEvent extends FileMangementEvents{
  String path;
  GetSubFilesAndFoldersEvent(this.path);
}
class SearchFilesAndFoldersEvent extends FileMangementEvents{
  String name;
  SearchFilesAndFoldersEvent(this.name);
}
