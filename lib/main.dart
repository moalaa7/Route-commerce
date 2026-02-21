import 'package:route_commerce/config/di/di.dart';
import 'package:route_commerce/config/my_bloc_observer.dart';
import 'package:route_commerce/core/cache/shared_prefs_utils.dart';
import 'package:route_commerce/core/utils/app_theme.dart';
import 'package:route_commerce/core/utils/app_routes.dart';
import 'package:route_commerce/features/ui/auth/login/login_screen.dart';
import 'package:route_commerce/features/ui/auth/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  configureDependencies();
  await SharedPrefsUtils.init();
  String routeName ;
  var token = SharedPrefsUtils.getData(key: 'token');
  if(token == null){
    //todo: no user , no token => login
    routeName = AppRoutes.loginRoute ;
  }else{
    //todo: user => token => home screen
    routeName = AppRoutes.homeRoute ;
  }
  runApp( MyApp(routeName: routeName,));
}

class MyApp extends StatelessWidget {
  String routeName ;
  MyApp({required this.routeName});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.loginRoute,
          routes: {
            AppRoutes.loginRoute: (context) => LoginScreen(),
            AppRoutes.registerRoute: (context) => RegisterScreen(),

          },
          theme: AppTheme.lightTheme,
        );
      },
    );
  }
}
