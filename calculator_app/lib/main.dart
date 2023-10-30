import 'package:calculator_app/modules/app_module.dart';
import 'package:calculator_app/modules/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  

    runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));

}