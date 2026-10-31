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
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          const ProfileAvatar(),
          const SizedBox(height: 20),
          const ProfileInfo(),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.edit),
            label: const Text('Edit Profil'),
          ),
          const SizedBox(height: 20),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('ketut@dosen.ac.id'),
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('Telepon'),
            subtitle: Text('+62 812-3456-7890'),
          ),
          const ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Lokasi'),
            subtitle: Text('Indonesia'),
          ),
        ],
      ),
    );
  }
}