import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../shared/mobile_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => context.go('/login'),
          ),
        ],
      ),
      body: const MobileScaffold(
        child: Center(
          child: Text('Bem-vindo à Home da Barbearia!'),
        ),
      ),
    );
  }
}
