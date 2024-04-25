import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

Future<void> toggleFavoritePlace(String placeId) async {
  final User? user = _auth.currentUser;

  if (user != null) {
    // Obtener la referencia del documento del usuario en Firestore
    final DocumentReference userRef = _firestore.collection('users').doc(user.uid);

    // Obtener el snapshot del documento del usuario
    DocumentSnapshot snapshot = await userRef.get();

    // Obtener la lista de lugares favoritos del usuario del snapshot
    List<String> favoritePlaces = List<String>.from(snapshot.get('favoritePlaces'));

    // Verificar si el lugar ya está marcado como favorito
    if (favoritePlaces.contains(placeId)) {
      // Si el lugar ya está marcado como favorito, eliminarlo de la lista
      favoritePlaces.remove(placeId);
    } else {
      // Si el lugar no está marcado como favorito, agregarlo a la lista
      favoritePlaces.add(placeId);
    }

    // Actualizar la lista de lugares favoritos del usuario en Firestore
    await userRef.update({'favoritePlaces': favoritePlaces});
  }
}