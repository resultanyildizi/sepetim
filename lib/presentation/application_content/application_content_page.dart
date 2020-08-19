import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/application/content/bottom_navbar/bottom_navbar_bloc.dart';
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
              unauthenticated: (_) => ExtendedNavigator.of(context)
                  .pushReplacementNamed(Routes.signInPage),
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
              return Scaffold(
                resizeToAvoidBottomPadding: false,
                body: contentTabs[state.selectedIndex],
                bottomNavigationBar: BottomNavigationBar(
                  elevation: 5.0,
                  backgroundColor: Colors.white,
                  currentIndex: state.selectedIndex,
                  items: [
                    BottomNavigationBarItem(
                      activeIcon: const Icon(
                        Icons.home,
                        color: sepetimGrey,
                      ),
                      icon: const Icon(
                        Icons.home,
                        color: sepetimLightGrey,
                      ),
                      title: Text(
                        translate(context, 'home'),
                        style: didactGothicTextStyle(),
                      ),
                    ),
                    BottomNavigationBarItem(
                      activeIcon: const Icon(
                        Icons.favorite,
                        color: sepetimGrey,
                      ),
                      icon: const Icon(
                        Icons.favorite,
                        color: sepetimLightGrey,
                      ),
                      title: Text(
                        translate(context, 'favorites'),
                        style: didactGothicTextStyle(),
                      ),
                    ),
                    BottomNavigationBarItem(
                      activeIcon: const Icon(
                        Icons.settings,
                        color: sepetimGrey,
                      ),
                      icon: const Icon(
                        Icons.settings,
                        color: sepetimLightGrey,
                      ),
                      title: Text(
                        translate(context, 'settings'),
                        style: didactGothicTextStyle(),
                      ),
                    )
                  ],
                  onTap: (index) => context.bloc<BottomNavbarBloc>()
                    ..add(
                      BottomNavbarEvent.indexChanged(index: index),
                    ),
                ),
              );
            },
          )),
    );
  }
}
