import 'package:flutter/material.dart';

import '../features/file_mangement/presentation_layer/view/content_file_view.dart';
import '../features/file_mangement/presentation_layer/view/home_view.dart';
import '../features/file_mangement/presentation_layer/view/sub_filess_and_folders_view.dart';


class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(settings, HomeView());

      case '/HomeView':
        return _materialRoute(settings,HomeView());

      case '/ContentFileView':
        final args = settings.arguments as ContentFileView;
        return _materialRoute(settings,ContentFileView(
          path: args.path,
        ));

      case '/SubFilessAndFoldersView':
        final args = settings.arguments as SubFilessAndFoldersView;
        return _materialRoute(settings,SubFilessAndFoldersView(
          path: args.path,
        ));


      default:
        return _materialRoute( settings,HomeView());
    }
  }

  static Route<dynamic> _materialRoute(RouteSettings settings,Widget view) {
    return MaterialPageRoute(settings: settings,builder: (_) => view);
  }
}