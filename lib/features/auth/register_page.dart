import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../shared/mobile_scaffold.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/login'),
        ),
        title: const Text('Cadastro'),
      ),
      body: MobileScaffold(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'assets/logo.png',
                height: 120,
                errorBuilder: (_, __, ___) => const Icon(Icons.cut, size: 100),
              ),
              const SizedBox(height: 32),
              const TextField(
                decoration: InputDecoration(labelText: 'E-mail'),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(labelText: 'CPF'),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(labelText: 'CEP'),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(labelText: 'Telefone'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => context.go('/home'),
                child: const Text('CADASTRAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
