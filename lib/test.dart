import 'dart:io';
import 'package:flutter/material.dart';

// packages
// import 'package:flutter_file_manager/flutter_file_manager.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
// import 'package:simple_permissions/simple_permissions.dart';

void main() => runApp(new MyApp());

@immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SimplePermissions.requestPermission(Permission.ReadExternalStorage);
    // SimplePermissions.requestPermission(Permission.WriteExternalStorage);
    return new MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter File Manager Demo"),
          ),
          body: FutureBuilder(
            future: _files(), // a previously-obtained Future<String> or null
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('Press button to start.');
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return Text('Awaiting result...');
                case ConnectionState.done:
                  if (snapshot.hasError)
                    return Text('Error: ${snapshot.error}');
                  return snapshot.data != null
                      ? ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) => Card(
                          child: ListTile(
                            onTap: ()async{
                              String path=snapshot.data[index].path;
                              var files = await Directory(path).listSync();

                              for(var i = 0;i<files.length;i++) {
                                print("${files[i].path} ");
                              }
                              print(files);
                            },
                            title: Column(children: [
                              Text('Size: ' +
                                  snapshot.data[index]
                                      .statSync()
                                      .size
                                      .toString()),
                              Text('Path: ' +
                                  snapshot.data[index].path.toString()),
                              Text('Date: ' +
                                  snapshot.data[index]
                                      .statSync()
                                      .modified
                                      .toUtc()
                                      .toString())
                            ]),

                            subtitle: Text(
                                "Extension: ${p.extension(snapshot.data[index].absolute.path).replaceFirst('.', '')}"), // getting extension
                          )))
                      : Center(
                    child: Text("Nothing!"),
                  );
              }

            },
          )),
    );
  }


  _files() async {
    var root = await getExternalStorageDirectory();
    String path=root!.path;
    // new Directory(path +'/music/nn')
    //     .create()
    //     .then((Directory directory)
    // {
    //   print(directory.path);
    // });
    new File(path +'/test.txt').create(recursive: true)
        .then((File file) {
      // Stuff to do after file has been created...
      print('${file.path}');
    });
    print(root.path);
    var files = await Directory(path).listSync();

    for(var i = 0;i<files.length;i++) {
      print("${files[i].path} ");
    }
    return files;
  }



  // void filesa(path) async {
  //   // var root = await getExternalStorageDirectory();
  //   // String path=root!.path;
  //   // new Directory(path +'/bb')
  //   //     .create()
  //   //     .then((Directory directory)
  //   // {
  //   //   print(directory.path);
  //   // });
  //   // print(root.path);
  //   var files = await Directory(path).listSync();
  //
  //   for(var i = 0;i<files.length;i++) {
  //     print("${files[i].path} ");
  //   }
  //   return files;
  // }

}