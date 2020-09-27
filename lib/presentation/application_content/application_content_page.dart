import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/application/content/bottom_navbar/bottom_navbar_bloc.dart';
import 'package:Sepetim/application/theme/theme_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/application_content/widgets/content_tabs.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationContentPage extends StatelessWidget {
  const ApplicationContentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) =>
                  ExtendedNavigator.of(context).replace(Routes.signInPage),
              orElse: () {},
            );
          },
          child: Container(),
        )
      ],
      child: BlocProvider<BottomNavbarBloc>(
          create: (context) => getIt<BottomNavbarBloc>(),
          child: BlocBuilder<BottomNavbarBloc, BottomNavbarState>(
            builder: (context, state) {
              return BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, themeState) => Scaffold(
                  resizeToAvoidBottomPadding: false,
                  body: contentTabs[state.selectedIndex],
                  bottomNavigationBar: BottomNavigationBar(
                    elevation: 5.0,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    currentIndex: state.selectedIndex,
                    items: [
                      BottomNavigationBarItem(
                        activeIcon: Icon(
                          Icons.home,
                          color: context.bloc<ThemeBloc>().state.theme ==
                                  AppTheme.light
                              ? sepetimGrey
                              : Colors.white,
                        ),
                        icon: Icon(
                          Icons.home,
                          color: context.bloc<ThemeBloc>().state.theme ==
                                  AppTheme.light
                              ? sepetimLightGrey
                              : sepetimGrey,
                        ),
                        title: Text(
                          translate(context, 'home'),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 14.0),
                        ),
                      ),
                      BottomNavigationBarItem(
                        activeIcon: Icon(
                          Icons.person,
                          color: themeState.theme == AppTheme.light
                              ? sepetimGrey
                              : Colors.white,
                        ),
                        icon: Icon(
                          Icons.person,
                          color: context.bloc<ThemeBloc>().state.theme ==
                                  AppTheme.light
                              ? sepetimLightGrey
                              : sepetimGrey,
                        ),
                        title: Text(
                          translate(context, 'account'),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 14.0),
                        ),
                      ),
                      BottomNavigationBarItem(
                        activeIcon: Icon(
                          Icons.settings,
                          color: themeState.theme == AppTheme.light
                              ? sepetimGrey
                              : Colors.white,
                        ),
                        icon: Icon(
                          Icons.settings,
                          color: themeState.theme == AppTheme.light
                              ? sepetimLightGrey
                              : sepetimGrey,
                        ),
                        title: Text(
                          translate(context, 'settings'),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 14.0),
                        ),
                      ),
                    ],
                    onTap: (index) => context.bloc<BottomNavbarBloc>()
                      ..add(
                        BottomNavbarEvent.indexChanged(index: index),
                      ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
