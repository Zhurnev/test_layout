import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_layout/constants/enums.dart';
import 'package:test_layout/logic/cubits/users_cubit.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, required this.title}) : super(key: key);
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
  String nationality = "Australia 🇦🇺";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Select nationality:"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: DropdownButtonFormField<String>(
                    value: nationality,
                    items: nationalities
                        .map((e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(
                              e,
                            )))
                        .toList(),
                    onChanged: (e) => setState(() {
                      try {
                        nationality = e!;
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(e.toString())));
                        nationality = nationalities[0];
                      }
                    }),
                  ),
                ),
                const Text(
                  "Select a gender:",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: RadioListTile<Gender>(
                          value: Gender.female,
                          title: const Text(
                            "Female",
                          ),
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
                          title: const Text(
                            "Male",
                          ),
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
                                vertical: 15, horizontal: 40)),
                      ),
                      child: const Text(
                        'Login',
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          BlocProvider.of<UsersCubit>(context)
                              .initLoadUser(gender, nationality);
                          Navigator.of(context).pushNamed("/main");
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
