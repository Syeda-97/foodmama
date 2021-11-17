import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_mama/ui/pages/home.dart';
import 'package:food_mama/ui/pages/settings_page.dart';
import 'package:food_mama/ui/pages/signin_page.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:food_mama/ui/utils/strings.dart';
import 'package:food_mama/ui/widgets/loading_screen.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:food_mama/data_layer/bloc/dynamic_theming/app_theme_bloc.dart';

void main() {
  runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<AppThemeBloc>(
            create: (context)=>AppThemeBloc(),
          ),
        ],
        child: MyApp(),
      ),




      );

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return OverlaySupport(
          child:  BlocConsumer<AppThemeBloc,AppThemeState>(
            listener: (context, state) {
            },
            builder: (context, state) {
              if (state is AppThemeLoadedState) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: CustomString.appName,
                  theme: state.theme,
                 home:LoadingScreen(),
                 // home: SettingsPage(),
                );
              }
              return Container(height: 0,
                width: 0,);
            },
          ),
        );
      });
    });

  }
}





