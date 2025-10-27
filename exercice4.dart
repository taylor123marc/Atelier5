class MotdepasseCourtException implements Exception {
  @override
  String toString() => "Erreur : le mot de passe doit avoir au moins 6 caractères.";
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException(); 
  }
  print("Mot de passe accepté.");
}

void main() {
  try {
    String motdepasse = "taylor"; 
    verifierMotdepasse(motdepasse);
  } on MotdepasseCourtException catch (e) {
    print(e);
  } finally {
    print("Fin de la vérification.");
  }
}