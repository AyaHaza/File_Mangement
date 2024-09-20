

import '../../domain_layer/entities/file_entity.dart';

class FileModel extends FileEntity {
  FileModel({
    required super.path,
    required super.size,
    required super.extension,
  });

  factory FileModel.fromJson(Map<String, dynamic> json) => FileModel(
    path: json["path"],
    size: json["size"]?.toDouble(),
    extension: json["extension"],
  );

  Map<String, dynamic> toJson() => {
    "path": path,
    "size": size,
    "extension": extension,
  };
}
