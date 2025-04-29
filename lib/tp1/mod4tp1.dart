class Matiere {
  String nom;
  List<double> notes;

  Matiere({required this.nom, required this.notes});


  double calculerMoyenne() {
    if (notes.isEmpty) return 0.0;
    double somme = notes.reduce((a, b) => a + b);
    return somme / notes.length;
  }
}


double calculerMoyenneGenerale(List<Matiere> matieres) {
  if (matieres.isEmpty) return 0.0;

  double sommeDesMoyennes = 0.0;

  for (var matiere in matieres) {
    double moyenne = matiere.calculerMoyenne();
    print('La moyenne en ${matiere.nom} est de ${moyenne.toStringAsFixed(2)}');
    sommeDesMoyennes += moyenne;
  }

  return sommeDesMoyennes / matieres.length;
}

void main() {
  // Liste des matières avec notes en dur
  List<Matiere> matieres = [
    Matiere(nom: 'Français', notes: [12.5, 14.0, 9.5, 17.0, 13.0]),
    Matiere(nom: 'Math', notes: [15.0, 18.5, 11.0, 19.0, 16.0]),
    Matiere(nom: 'Informatique', notes: [19.5, 17.0, 18.0, 20.0, 15.5]),
  ];

  // Calcul et affichage de la moyenne générale
  double moyenneGenerale = calculerMoyenneGenerale(matieres);
  print('La moyenne générale est ${moyenneGenerale.toStringAsFixed(2)}');
}