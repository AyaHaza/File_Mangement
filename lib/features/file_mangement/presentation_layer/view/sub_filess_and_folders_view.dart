
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart' as exten;
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/resources/string.dart';
import '../../../../injection_container.dart';
import '../bloc/bloc.dart';
import '../bloc/events.dart';
import '../bloc/states.dart';
import 'content_file_view.dart';

String currentSubPath='';List route=[];
class SubFilessAndFoldersView extends StatefulWidget {
  String path;

  SubFilessAndFoldersView({required this.path});

  @override
  State<SubFilessAndFoldersView> createState() => _SubFilessAndFoldersViewState();
}

class _SubFilessAndFoldersViewState extends State<SubFilessAndFoldersView> {
  TextEditingController nameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FileMangementBloc>(
        create: (context) => sl()..add(GetSubFilesAndFoldersEvent(widget.path)) ,
        child: Builder(
            builder: (context) {
              print(route);
              return  BlocConsumer<FileMangementBloc,FileMangementStates>(
                  builder: (context,state) {
                    if(state is LoadingState){
                      return CupertinoActivityIndicator(color: blue,);
                    }else if(state is ErrorState){
                      return  Text(state.failure);
                    }else if(state is SuccessState){
                      print(state.data.length);
                        List pathList =widget.path.split('/');
                        List pathLastName=widget.path.split('/');
                        pathLastName.removeLast();
                        if(!route.contains(pathLastName.last)){
                          route.add(pathLastName.last);
                        }
                        if(!route.contains(pathList.last)){
                          route.add(pathList.last);
                        }
                        route.toSet();
                        return Scaffold(
                          backgroundColor: white,
                          appBar: AppBar(
                            backgroundColor: white,
                            leading:IconButton(
                              onPressed: (){route.removeLast();Navigator.pop(context);},
                              icon: Icon(Icons.arrow_back),
                            ) ,
                            actions: [
                              Container(
                                width: screenWidth*0.6,
                                child: TextFormField(
                                  decoration:  InputDecoration(
                                      hintText: searchByName,
                                      hintStyle: TextStyle(color: subtitleColor,fontSize: 13),focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: black.withOpacity(0.5)))
                                  ),
                                  cursorColor: blue,
                                  onChanged: (value){
                                    context.read<FileMangementBloc>().add(SearchFilesAndFoldersEvent(value));
                                  },
                                ),
                              ),
                              Padding(
                                padding: onlyRightPadding(0.01),
                                child: Icon(Icons.search_rounded),
                              ),
                              DropdownButton<String>(
                                hint: Icon(Icons.filter_alt_outlined),
                                underline: SizedBox(),
                                borderRadius: BorderRadius.circular(10),
                                dropdownColor: white,
                                iconSize: 0,
                                items: <String>[files, folders].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,style: TextStyle(color: black),),
                                  );
                                }).toList(),
                                onChanged: (v) {
                                  if(v==files){
                                    state.data.sort((p1,p2){
                                      p2=fileType;
                                      var res=Comparable.compare(p1.statSync().type.toString(), p2);
                                      setState(() {});
                                      return res;
                                    });
                                  }
                                  if(v==folders){
                                    state.data.sort((p1,p2){
                                      p2=folderType;
                                      var res=Comparable.compare(p1.statSync().type.toString(), p2);
                                      print(res);
                                      setState(() {});
                                      return res;
                                    });
                                  }

                                },
                              )
                            ],
                          ),
                          body: Padding(
                            padding:onlyTopPadding(0.004),
                            child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: white,
                                child: ListView(
                                  children: [
                                    Padding(
                                      padding: leftAndRightAndTopPadding(0.04, 0.04,0.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.folder_open_sharp,color: subtitleColor,),
                                          Container(
                                            height: screenHight*0.03,
                                            width: screenWidth*0.84,
                                            // color: green,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                               itemCount: route.length,
                                                itemBuilder: (context, index) {
                                                  return Row(
                                                    children: [
                                                      Icon(Icons.arrow_right,size: 26,color: subtitleColor,),
                                                      Text(route[index],style: TextStyle(color: blue),)
                                                    ],
                                                  );
                                                },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: onlyRightPadding(0.01),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.sort,color: black,size: 14,),
                                          DropdownButton<String>(
                                            hint: Text(sortBy,style: TextStyle(fontSize: 14),),
                                            underline: SizedBox(),
                                            borderRadius: BorderRadius.circular(10),
                                            dropdownColor: white,
                                            iconSize: 14,
                                            items: <String>[name,date,size].map((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value,style: TextStyle(color: black),),
                                              );
                                            }).toList(),
                                            onChanged: (v) {
                                              if(v==name){
                                                state.data.sort((p1,p2){
                                                  List newp1=p1.path.split('/');
                                                  List newp2=p2.path.split('/');
                                                  var result=Comparable.compare(newp1.last, newp2.last);
                                                  setState(() {});
                                                  return result;
                                                });
                                              }
                                              if(v==size){
                                                state.data.sort((p1,p2){
                                                  var result=Comparable.compare(p1.statSync().size.toString(), p2.statSync().size.toString());
                                                  setState(() {});
                                                  return result;
                                                });
                                              }
                                              if(v==date){
                                                state.data.sort((p1,p2){
                                                  var result=Comparable.compare(p1.statSync().modified.toUtc().toString(), p2.statSync().modified.toUtc().toString());
                                                  setState(() {});
                                                  return result;
                                                });
                                              }

                                            },
                                          ),
                                          IconButton(onPressed: (){var reversedList=state.data.reversed.toList();setState(() {state.data=reversedList;});}, icon:Row(children: [ Icon(Icons.arrow_upward_outlined,size: 12,), Icon(Icons.arrow_downward_outlined,size: 12,)],))
                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: leftAndRightAndTopAndTBottomPadding(0.04, 0.04, 0.0, 0.04),
                                      child: SizedBox(
                                        height: screenHight*0.81,
                                        child:(vaild==true)?Center(child: Text(failedSearch),) : GridView.builder(
                                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                                maxCrossAxisExtent:200,
                                                childAspectRatio: 3 / 3,
                                                crossAxisSpacing: 8,
                                                mainAxisSpacing: 8
                                            ),
                                            itemCount: state.data.length,
                                            itemBuilder: (BuildContext ctx, index) {
                                              // currentSubPath=state.data[index].path;
                                              return InkWell(
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: subtitleColor.withOpacity(0.3),),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      SizedBox(height: screenHight*0.008,),
                                                      (exten.extension(state.data[index].absolute.path).replaceFirst('.', '')=='')?Icon(Icons.folder_outlined,size: 30,color: blue,):Icon(Icons.file_copy_outlined ,size: 30,color: blue,),
                                                      Padding(
                                                        padding: leftAndRightAndTopPadding(0.02, 0.02,0.04),
                                                        child: Text('$name: '+state.data[index].path.split('/').last+' | $size: '+state.data[index].statSync().size.toString()+' | $lastModified: '+state.data[index].statSync().modified.toUtc().toString()+' | $type: '+state.data[index].statSync().type.toString(),style: TextStyle(color: black),),
                                                      ),
                                                      Container(decoration: BoxDecoration(color: subtitleColor.withOpacity(0.3),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),)),height: screenHight*0.03,width: double.infinity,padding: leftAndRightPadding(0.0, 0.0),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          IconButton(onPressed: (){
                                                            showDialog(
                                                              context: context,
                                                              builder: (BuildContext _) {
                                                                return Dialog(
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.circular(10),
                                                                  ),
                                                                  backgroundColor: white,
                                                                  child: Container(
                                                                    height: 200,
                                                                    padding: leftAndRightPadding(0.04, 0.04),
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                      children: [
                                                                        IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.cancel_outlined,color: blue,)),
                                                                        TextField(controller: nameController,cursorColor: blue,decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: blue)),focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: blue)) ,hintText: state.data[index].path.split('/').last,hintStyle: TextStyle(color: black.withOpacity(0.5))),),
                                                                        Row(
                                                                          children: [
                                                                            Spacer(),
                                                                            Padding(
                                                                              padding: onlyBottomPadding(0.02),
                                                                              child: Text(editName,style: TextStyle(color: blue.withOpacity(0.5)),),
                                                                            ),
                                                                            Spacer()
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: onlyBottomPadding(0.01),
                                                                          child: ElevatedButton(
                                                                            onPressed: () {
                                                                              (exten.extension(state.data[index].absolute.path).replaceFirst('.', '')=='')?
                                                                              context.read<FileMangementBloc>().add(EditNameFolderEvent(state.data[index].path,nameController.text)):
                                                                              context.read<FileMangementBloc>().add(EditNameFileEvent(state.data[index].path,nameController.text));
                                                                              Navigator.of(context).pop();
                                                                            },
                                                                            style: ElevatedButton.styleFrom(
                                                                                backgroundColor: blue,
                                                                                maximumSize: Size(screenWidth*0.3, screenHight*0.05),
                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                                                            ),
                                                                            child: Text(edit,style: TextStyle(color: white),),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          }, icon:Icon( Icons.mode_edit_outlined,color: green,size: 16,)),
                                                          Text('|'),
                                                          IconButton(onPressed:  (){
                                                            showDialog(
                                                              context: context,
                                                              builder: (BuildContext _) {
                                                                return Dialog(
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.circular(10),
                                                                  ),
                                                                  backgroundColor: white,
                                                                  child: Container(
                                                                    height: 200,
                                                                    padding: leftAndRightPadding(0.04, 0.04),
                                                                    child: Column(
                                                                      children: [
                                                                        Spacer(),
                                                                        Padding(
                                                                          padding: onlyBottomPadding(0.03),
                                                                          child: Text(areYouSurForDeleteThat),
                                                                        ),
                                                                        Padding(
                                                                          padding: leftAndRightAndTBottomPadding(0.16,0.0,0.06),
                                                                          child: Row(
                                                                            children: [
                                                                              Padding(
                                                                                padding: onlyRightPadding(0.02),
                                                                                child: ElevatedButton(
                                                                                  onPressed: () {
                                                                                    (exten.extension(state.data[index].absolute.path).replaceFirst('.', '')=='')?
                                                                                    context.read<FileMangementBloc>().add(DeleteFolderEvent(state.data[index].path)):
                                                                                    context.read<FileMangementBloc>().add(DeleteFileEvent(state.data[index].path));
                                                                                    Navigator.of(context).pop();
                                                                                  },
                                                                                  style: ElevatedButton.styleFrom(
                                                                                      backgroundColor: blue,
                                                                                      maximumSize: Size(screenWidth*0.3, screenHight*0.05),
                                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                                                                  ),
                                                                                  child: Text(delete,style: TextStyle(color: white),),
                                                                                ),
                                                                              ),
                                                                              ElevatedButton(
                                                                                onPressed: () {
                                                                                  Navigator.of(context).pop();
                                                                                },
                                                                                style: ElevatedButton.styleFrom(
                                                                                    backgroundColor: blue,
                                                                                    maximumSize: Size(screenWidth*0.3, screenHight*0.05),
                                                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                                                                ),
                                                                                child: Text(cancel,style: TextStyle(color: white),),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          }, icon:Icon( Icons.delete_outline,color: red,size: 16,)),
                                                        ],))
                                                    ],
                                                  ),
                                                ),
                                                onTap: (){
                                                  List subPath=state.data[index].path.split('/');
                                                  (exten.extension(state.data[index].absolute.path).replaceFirst('.', '')=='')?route.add(subPath.last):SizedBox();
                                                  (exten.extension(state.data[index].absolute.path).replaceFirst('.', '')=='')?
                                                  Navigator.pushNamed(context, '/SubFilessAndFoldersView',arguments:  SubFilessAndFoldersView(
                                                    path: state.data[index].path,
                                                  )):
                                                  Navigator.pushNamed(context, '/ContentFileView',arguments:  ContentFileView(
                                                    path: state.data[index].path,
                                                  ));
                                                },
                                              );
                                            }
                                        )


                                      ),
                                    )
                                  ],
                                )

                            ),
                          ),
                          floatingActionButton: FloatingActionButton(
                            backgroundColor: blue,
                            child: Icon(Icons.file_upload_outlined,color: white,),
                            onPressed: (){
                              showDialog(
                                context: context,
                                builder: (BuildContext _) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                    ),

                                    backgroundColor: white,
                                    child: Container(
                                      height: 200,
                                      padding: leftAndRightPadding(0.04, 0.04),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.cancel_outlined,color: blue,)),
                                          TextField(controller: nameController,cursorColor: blue,decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: blue)),focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: blue)) ,hintText: nameFileOrFolder,hintStyle: TextStyle(color:  black.withOpacity(0.5))),),
                                          Row(
                                            children: [
                                              Spacer(),
                                              Padding(
                                                padding: onlyBottomPadding(0.02),
                                                child: Text(createAsAFileOrFolder,style: TextStyle(color: blue.withOpacity(0.8)),),
                                              ),
                                              Spacer()
                                            ],
                                          ),
                                          Padding(
                                            padding: onlyBottomPadding(0.01),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: leftAndRightPadding(0.15,0.04),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      context.read<FileMangementBloc>().add(CreateFileEvent(widget.path+'/h.txt',nameController.text));
                                                      Navigator.of(context).pop();
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor: blue,
                                                        maximumSize: Size(screenWidth*0.3, screenHight*0.05),
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                                    ),
                                                    child: Text(fileType,style: TextStyle(color: white),),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    context.read<FileMangementBloc>().add(CreateFolderEvent(widget.path+'/h.txt',nameController.text));
                                                    Navigator.of(context).pop();
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                      backgroundColor: blue,
                                                      maximumSize: Size(screenWidth*0.3, screenHight*0.05),
                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                                  ),
                                                  child: Text(folderType,style: TextStyle(color: white),),
                                                ),
                                                Spacer(),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        );}return CupertinoActivityIndicator(color: blue,);
                  }, listener: (BuildContext context,FileMangementStates  state) {
                if(state is SuccessBoolState){
                  context.read<FileMangementBloc>().add(GetSubFilesAndFoldersEvent(widget.path));
                }
              });
            }
        )
    );
  }
}



