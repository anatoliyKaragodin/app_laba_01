import 'package:app_laba_01/l10n/all_locales.dart';
import 'package:app_laba_01/settings/locale_provider.dart';

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

/// Start page with authentication and language option
///
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key("homePage"),
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          authenticationButton(context),
          const SizedBox(height: 100),
          languageOption(context),
        ],
      ),
    );
  }

  TextButton authenticationButton(BuildContext context) {
    return TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/auth_page');
            },
            child: Text(AppLocalizations.of(context).authentication));
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
}
