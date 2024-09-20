import 'dart:io';
import 'package:alpha_test/features/file_mangement/data_layer/data_source/local/file_mangement_api_service_imp.dart';
import 'package:flutter_test/flutter_test.dart';


void main(){
  late FileMangementApiServiceImp fileMangementApiServiceImp;

  setUp((){
    fileMangementApiServiceImp=FileMangementApiServiceImp();
  });


  group('create File', (){
    test("success", ()async{
      final res=await fileMangementApiServiceImp.createFile('test/path', 'test');
      expect(res, true);
    });
  });

  group('create Folder', (){
    test("success", ()async{
      final res=await fileMangementApiServiceImp.createFolder('test/path', 'test');
      expect(res, true);
    });
  });


  group('write content file', (){
    test("success", ()async{
      final res=await fileMangementApiServiceImp.writeContentFile('test/path','test');
      expect(res, true);
    });
  });

  group('edit name file', (){
    test("success", ()async{
      final res=await fileMangementApiServiceImp.editNameFile('test/path','testEdited');
      expect(res, true);
    });
  });

  group('edit name folder', (){
    test("success", ()async{
      final res=await fileMangementApiServiceImp.editNameFolder('test/path','testEdited');
      expect(res, true);
    });
  });

  group('delete file', (){
    test("success", ()async{
      final res=await fileMangementApiServiceImp.deleteFile('test/path');
      expect(res, true);
    });
  });

  group('delete folder', (){
    test("success", ()async{
      final res=await fileMangementApiServiceImp.deleteFolder('test/path');
      expect(res, true);
    });
  });

}