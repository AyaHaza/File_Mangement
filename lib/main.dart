import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/bloc_observe.dart';
import 'config/responsive.dart';
import 'config/routes.dart';
import 'features/file_mangement/presentation_layer/view/home_view.dart';
import 'injection_container.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initResponsive(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      title: 'File Mangement App',
      home: HomeView(),
    );
  }
}
