import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  late UserData _userData;
  File? _profileImage;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userData =
          await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      setState(() {
        _userData = UserData.fromMap(userData.data());
        _nameController.text = _userData.name;
        _emailController.text = _userData.email;
        _passwordController.text = _userData.password;
        _isLoading = false; // Marca como cargado cuando los datos están listos
      });
    }
  }
bool _isSelectingImage = false;
 Future<void> _selectProfilePicture() async {
  if (_isSelectingImage) {
    return; // Evita iniciar otra selección de imagen si ya hay una en curso
  }
  
  _isSelectingImage = true;

  final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

  _isSelectingImage = false; // Restablece el estado después de completar la selección de imagen

  if (pickedImage != null) {
    setState(() {
      _profileImage = File(pickedImage.path);
    });
  }
}
  void _updateProfile() async {
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    try {
      if (_userData == null) {
        // Si los datos del usuario no se han cargado correctamente, mostrar un mensaje de error
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Error: No se pudieron cargar los datos del usuario.')));
        return;
      }

      final profileData = {
        'name': _nameController.text.trim(),
        'email': _emailController.text.trim(),
        'password': _passwordController.text.trim(),
      };

        if (_profileImage != null) {
          final storageRef = FirebaseStorage.instance.ref().child('profile_images').child(user.uid);
          final uploadTask = storageRef.putFile(_profileImage!);
          final snapshot = await uploadTask.whenComplete(() => null);
          final downloadURL = await snapshot.ref.getDownloadURL();

          profileData['profileImage'] = downloadURL;
        }

        await FirebaseFirestore.instance.collection('users').doc(user.uid).update(profileData);

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Perfil Actualizado.')));
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Fallo en conexión.')));
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: _isLoading ? 
        Center(child: CircularProgressIndicator()) : 
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: _selectProfilePicture,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: _profileImage != null
                        ? FileImage(_profileImage!)
                        : (_userData.profileImage != null
                            ? NetworkImage(_userData.profileImage!)
                            : const AssetImage('assets/user.jpg')) as ImageProvider<Object>,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nombre',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      controller: _nameController,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Correo',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      controller: _emailController,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Contraseña',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _updateProfile,
                      child: const Text('Actualizar'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}

class UserData {
  final String name;
  final String email;
  final String password;
  final String? profileImage;

  UserData({
    required this.name,
    required this.email,
    required this.password,
    this.profileImage,
  });

  factory UserData.fromMap(Map<String, dynamic>? map) {
    return UserData(
      name: map?['name'] ?? '',
      email: map?['email'] ?? '',
      password: map?['password'] ?? '',
      profileImage: map?['profileImage'],
    );
  }
}