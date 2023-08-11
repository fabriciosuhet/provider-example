import 'package:flutter/material.dart';
import 'package:provider_example/change_notifier/change_notifier_page.dart';
import 'package:provider_example/change_notifier/provider_controller.dart';
import 'package:provider_example/provider/provider_page.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) {
            return UserModel(
                name: 'Fabrício Suhet',
                imgAvatar:
                    'https://yt3.googleusercontent.com/LOsnm6sCS_o5T3RijFEa2f_3tcu2o_Q5bJZ4qfMxQzBqvHAOq_s-pl6_hDKK4pMHX8pCaO2W1w=s900-c-k-c0x00ffffff-no-rj',
                birthDate: '15/03/2000');
          },
        ),
        ChangeNotifierProvider(
          create: (_) => ProviderController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/provider': (_) => const ProviderPage(),
          '/change': (_) => const ChangeNotifierPage(),
        },
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/provider');
                      },
                      child: const Text('Provider'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/change');
                      },
                      child: const Text('Change Notifier'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
