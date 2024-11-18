import 'package:flutter/material.dart';
import 'package:flutter_application_1/settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Halaman Home"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Contoh Font yang tidak berubah",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Contoh Font Roboto",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Contoh Font Libre",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Libre',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Contoh Font Chokokutai",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Chokokutai',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Font yang berubah",
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsScreen()),
                          );
                        },
                        child: const Text('Go to Settings'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
