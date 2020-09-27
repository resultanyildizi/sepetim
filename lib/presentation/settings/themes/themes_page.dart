import 'package:Sepetim/application/theme/theme_bloc.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listTiles = themeMaps.entries
        .map((theme) => ListTile(
              title: Text(
                translate(context, theme.value),
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () => {
                context.bloc<ThemeBloc>().add(
                      ThemeEvent.themeChanged(theme: theme.key),
                    )
              },
              trailing: theme.key == context.bloc<ThemeBloc>().state.theme
                  ? const Icon(Icons.check_box)
                  : null,
            ))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sepetim',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: DefaultPadding(
          child: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: listTiles,
          color: Theme.of(context).iconTheme.color,
        ).toList(),
      )),
    );
  }
}
