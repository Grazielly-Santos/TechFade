import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../shared/mobile_scaffold.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MobileScaffold(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                'assets/logo.png', // substitua pelo logo real depois
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
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => context.go('/home'),
                child: const Text('LOGIN'),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () => context.go('/register'),
                child: const Text('Não possui conta? CADASTRE-SE'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
