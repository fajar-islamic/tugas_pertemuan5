import 'package:flutter/material.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/profile_info.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Profil',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ProfileAvatar(),
              const SizedBox(height: 20),
              const ProfileInfo(),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}