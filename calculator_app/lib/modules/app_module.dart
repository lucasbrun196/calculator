import 'package:calculator_app/modules/home/home_module.dart';
import 'package:calculator_app/modules/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module{
  
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => i())
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => SplashPage()),
    ModuleRoute('/home', module: HomeModule())
  ];

}