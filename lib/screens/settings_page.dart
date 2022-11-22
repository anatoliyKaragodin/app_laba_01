import 'package:flutter/material.dart';
import 'package:app_laba_01/settings/model_theme.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child)
    {
      return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: [

              /// Close icon(return to app_page)
              ///
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pushNamed(context, '/app page');
                },
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              /// Application theme option
              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Тема приложения'),
                  IconButton(
                    onPressed: () {
                      themeNotifier.isDark
                          ? themeNotifier.isDark = false
                          : themeNotifier.isDark = true;
                    },
                    icon: Icon(
                        themeNotifier.isDark
                            ? Icons.nightlight_round
                            : Icons.wb_sunny),
                  ),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(Icons.dark_mode),
                  // ),
                ],
              ),

              /// Application language option
              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Русский')),
                  TextButton(onPressed: () {}, child: const Text('English')),
                  TextButton(onPressed: () {}, child: const Text('中国人')),
                ],
              ),
            ],
          )
      );
    }
    );
  }
}
