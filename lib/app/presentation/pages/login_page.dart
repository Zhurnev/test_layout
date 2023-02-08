import 'package:flutter/material.dart';
import 'package:test_layout/app/logic/cubits/users_cubit.dart';
import 'package:test_layout/app/utility/enums.dart';
import 'package:test_layout/injectable/get_it.dart';
import 'package:test_layout/l10n/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Gender gender = Gender.female;
  final _formKey = GlobalKey<FormState>();
  final List<String> nationalities = [
    'Australia 🇦🇺',
    'Brazil 🇧🇷',
    'Canada 🇨🇦',
    'Switzerland 🇨🇭',
    'Germany 🇩🇪',
    'Denmark 🇩🇰',
    'Spain 🇪🇸',
    'Finland 🇫🇮',
    'France 🇫🇷',
    'Great Britain 🇬🇧',
    'Ireland 🇮🇪',
    'India 🇮🇳',
    'Iran 🇮🇷',
    'Mexico 🇲🇽',
    'Netherlands 🇳🇱',
    'Norway 🇳🇴',
    'New Zealand 🇳🇿',
    'Serbia 🇷🇸',
    'Turkey 🇹🇷',
    'Ukraine 🇺🇦',
    'United States 🇺🇸',
  ];
  late String nationality = nationalities[0];

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.loginAppBarTitle),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.nationalitySelectPrompt),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: DropdownButtonFormField<String>(
                    value: nationality,
                    items: nationalities
                        .map(
                          (e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(
                              e,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (e) => setState(() {
                      try {
                        nationality = e!;
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(e.toString())),
                        );
                        nationality = nationalities[0];
                      }
                    }),
                  ),
                ),
                Text(
                  l10n.genderSelectPrompt,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    children: [
                      Expanded(
                        child: RadioListTile<Gender>(
                          value: Gender.female,
                          title: Text(l10n.femaleGender),
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<Gender>(
                          value: Gender.male,
                          title: Text(l10n.maleGender),
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 40,
                          ),
                        ),
                      ),
                      child: Text(
                        l10n.loginButton,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          getIt<UsersCubit>().initLoadUser(gender, nationality);
                          Navigator.of(context).pushNamed('/main');
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
