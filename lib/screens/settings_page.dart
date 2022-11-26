import 'package:app_laba_01/l10n/all_locales.dart';
import 'package:app_laba_01/locale_provider.dart';

import 'package:flutter/material.dart';
import 'package:app_laba_01/settings/model_theme.dart';

import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Change theme provider
    ///
    return Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child) {
      /// Change language provider
      ///
      return Consumer<LocaleProvider>(
          builder: (context, LocaleProvider localeNotifier, child) {
        return Scaffold(
            appBar: buildAppBar(context),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                themeOption(context, themeNotifier),
                languageOption(context),
              ],
            ));
      });
    });
  }

  Row languageOption(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {
              Provider.of<LocaleProvider>(context, listen: false)
                  .setLocale(AllLocale.all[0]);
            },
            child: const Text('Русский')),
        TextButton(
            onPressed: () {
              Provider.of<LocaleProvider>(context, listen: false)
                  .setLocale(AllLocale.all[1]);
            },
            child: const Text('English')),
        TextButton(
            onPressed: () {
              Provider.of<LocaleProvider>(context, listen: false)
                  .setLocale(AllLocale.all[2]);
            },
            child: const Text('қазақ')),
      ],
    );
  }

  Row themeOption(BuildContext context, ModelTheme themeNotifier) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context).appTheme,
        ),
        IconButton(
          onPressed: () {
            themeNotifier.isDark
                ? themeNotifier.isDark = false
                : themeNotifier.isDark = true;
          },
          icon: Icon(themeNotifier.isDark
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
        ),
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
    );
  }
}
