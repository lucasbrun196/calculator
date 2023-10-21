import 'package:calculator_app/modules/home/home_view.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class HomeModule extends Module{

  @override
  List<Bind<Object>> get binds => [
    BlocBind.lazySingleton((i) => i())
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomeView())
  ];
}