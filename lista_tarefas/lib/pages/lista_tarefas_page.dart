import 'package:flutter/material.dart';

class ListaTarefasPage extends StatelessWidget {
  ListaTarefasPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'exemplo@gmail.com',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                onPressed: login,
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    String text = emailController.text;
    print(text);
  }
}
