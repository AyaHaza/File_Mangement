import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/resources/string.dart';
import '../../../../injection_container.dart';
import '../bloc/bloc.dart';
import '../bloc/events.dart';
import '../bloc/states.dart';

class ContentFileView extends StatelessWidget {
  String path;
  ContentFileView({required this.path});
  TextEditingController contentController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FileMangementBloc>(
      create: (context) => sl()..add(GetFilesContentEvent(path)),
      child: Builder(
         builder: (context) {
           return BlocConsumer<FileMangementBloc,FileMangementStates>(
           builder: (context,state){
             if(state is LoadingState){
               return CupertinoActivityIndicator(color: blue,);
             }else if(state is ErrorState){
               return  Text(state.failure);
             }else if(state is SuccessState){
               return Scaffold(
                 backgroundColor: white,
                 appBar: AppBar(
                   title: Text(path.split('/').last),
                   backgroundColor: white,
                 ),
                  body: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Text(state.data.toString())
                 ),
                  floatingActionButton: FloatingActionButton(
                    backgroundColor: blue,
                    child: Icon(Icons.edit,color: white,),
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext _) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: blue.withOpacity(0.4))
                            ),

                            backgroundColor: CupertinoColors.systemGrey3.withOpacity(0.3),
                            child: Container(
                              height: 200,
                              padding: leftAndRightPadding(0.04, 0.04),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.cancel_outlined,color: blue,)),
                                  TextField(controller: contentController,cursorColor: blue,decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: blue)),focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: blue)) ,hintText: state.data,hintStyle: TextStyle(color: white.withOpacity(0.5))),),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Padding(
                                        padding: onlyBottomPadding(0.02),
                                        child: Text(editContentFile,style: TextStyle(color: blue.withOpacity(0.5)),),
                                      ),
                                      Spacer()
                                    ],
                                  ),
                                  Padding(
                                    padding: onlyBottomPadding(0.01),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        context.read<FileMangementBloc>().add(WriteContentFileEvent(path,contentController.text));
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(edit,style: TextStyle(color: blue),),
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
               );
             }return CupertinoActivityIndicator(color: blue,);
           }, listener: (BuildContext context, FileMangementStates state) {
             if(state is SuccessBoolState){
               context.read<FileMangementBloc>().add(GetFilesContentEvent(path));
             }
           },);
        },
      ),
    );
  }
}
