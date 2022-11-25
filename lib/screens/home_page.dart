import 'package:app_laba_01/l10n/all_locales.dart';
import 'package:app_laba_01/locale_provider.dart';
import 'package:app_laba_01/widgets/auth_gate.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:provider/provider.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:app_laba_01/widgets/auth_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'app_page.dart';

/// Start page with authentication and language option
///
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Authentication option
      ///
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              AppLocalizations.of(context).authentication,
              // style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),

          Placeholder(child: AuthGate(),),
          

          const SizedBox(
            height: 100,
          ),

          /// Language option
          ///
          Row(
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
          ),
        ],
      ),
    );
  }
}
