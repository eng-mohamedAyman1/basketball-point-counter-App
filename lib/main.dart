// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:bloc2/data/models/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'logic/cubit/cubits.dart';



void main() {
  runApp( MyApp( route: App_routes(),));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  
 final App_routes route;
   const MyApp({
    super.key,
    required this.route,
  });
  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
    
      builder: (_, child) {
        return BlocProvider(
          create: (context) => CounterCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
           onGenerateRoute:route.generatRoute ,
          ),
        );
      },
    );
  }
}
