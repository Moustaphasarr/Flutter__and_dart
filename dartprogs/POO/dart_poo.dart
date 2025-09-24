
void main()
{
  // Instatiation d'un objet de la classe Note avec des parametres nommés 
  //// matiere et le parametre. note est par défaut
  Note note = new Note (matiere: "Algèbre fondamental");
  //Utilisateur d'un setter pour modifier le champ note
  note.note = 18;
  print("Affichage d'une note ");
  //Utilisation de la methode Note.toString() qui transforme la classe en String
  print("Note = $note");
  //utilisation de l'operateur + surchargé 
  note + 1;
  print("Avec bonus :$note");
  print('\n\n\n');

  // Instantiation de la classe Personne avec des parametres positionnels
  Personne p = new Personne ("Mamadou Ndiaye", "+221 77 123 45 67", false, 20);
  // Utilisation de la methode Personne.toString() qui transforme la classe en String 
  print ("Affichage d'une personne : \n $p");

  /**********************************************************/
  // Instantiation de la classe Etudiant avec des parametres positionnels
  Etudiant etul = Etudiant("Adama Diop", "+221 76 123 45 67", true, 19);
  // Utilisation de la methode setNote avec des parametres nommés
  etul. setNote (matiere: "algo4", newnote: 13, coef: 2);
  etul. setNote (matiere: "analyse3", newnote: 17, coef: 3);
  etul. setNote (matiere: "electromeca", newnote: 11, coef: 1);
  etul. setNote (matiere: "anglais", newnote: 16, coef: 1);
  // Utilisation de la methode Etudiant.toString() qui transforme la classe en String
  print('\n\n\n');
  print(etul);
  print("Moyenne ${etul.nom} : ${etul.calculMoyenne()}");
  Etudiant etu2 = Etudiant ("Fatou Fall", "+221 76 123 45 68", false, 18);

  // Utilisation de la methode setNote avec des parametres nommés
  etu2.setNote (matiere: "algo4", newnote: 15, coef: 2);
  etu2. setNote (matiere: "analyse3", newnote: 15, coef: 3);
  etu2. setNote (matiere: "electromeca", newnote: 10, coef: 1);
  etu2. setNote (matiere: "anglais", newnote: 10, coef: 1);
  print('\n\n\n');
  print(etu2);
  print (etu2. calculMoyenne());

}

class Note{
  final matiere; // champ matiere
  double note;
  double coeficient;
  //Constructeur avec un champ obligatoire et deux avec des valeurs par défaut
  Note({
    required this.matiere,
    this.note=0,
    this.coeficient=1
    });
  
  //Surcharge(remplacement) de la méthode toString hérité de la classe Object  
  @override
  String toString() {
    return "\n $matiere --> $note (coef $coeficient)";
  }

  //Méthode écrite avec le style arrow
  bool est_validee()=>this.note>=10;

  //Surcharge d'opérateur + exemple note+2 ; ajout de 2 point

  double operator +(double bonus)=>this.note+=bonus;


}


/****************************************/
// Définition de la classe Personne
/****************************************/

class Personne {
  //définition de propriétes nullables
  String? nom;
  String? numeroTelephone;
  bool? estMarie;
  int? age;
  // Constructeur avec une ecriture simplifiée
  Personne (this.nom, this.numeroTelephone, this.estMarie, this.age);

  // Surcharge (remplacement) de la méthode toString hérité de la classe Object
  @override
  String toString() {
  String str = "-" * 100;
  str += "\nPrénom et nom: $nom."
  "\nTelephone: $numeroTelephone."
  "\nEst marié : $estMarie"
  "\nAge: $age.";
  return str;
  }
}

//Créer une classe Etudiant qui implémente la classe

/*************************************************/
// Définition de la classe Etudiant etend Personne
/****************************************************/
class Etudiant extends Personne {
  //Ensemble de Notes donc sans repetition (une matière ne doit pas se repeter)
  Set<Note> notesList ={};
   // Utilise la classe Note pour construire les membres
  final _codeEtudiant = DateTime.now().microsecondsSinceEpoch.toString(); // Membre privé avec _ au debut
  // Constructeur avec appel du constructeur du parent, initialisation d'une
  // propriété à l'intérieur
  Etudiant(String? nom, String? numeroTelephone, bool? estMarie, int age)
  :super (nom, numeroTelephone, estMarie, age) {
  this.notesList.add(Note(matiere: "algo4"));
  this.notesList.add(Note(matiere: "analyse3")) ;
  this.notesList.add(Note (matiere: "electromeca"));
  this.notesList.add(Note (matiere: "anglais"));}

  @override
  String toString() {
  return "-" * 100 + "`\nCode Etudiant : $_codeEtudiant\n"+
  super.toString() +
  "\nNotes :  ${notesList.join(":")}\n"+"-"*100;
  }

  double calculMoyenne() {
  double somme = 0.0;
  num coefs = 0;
  for (var note in notesList) {
  somme = somme + note.note * note.coeficient;
  coefs = coefs + note. coeficient;
  }
  return somme /coefs;
  }
  void setNote(
  {required String matiere, required double newnote, double coef = 1}) {
  var mat = notesList.where((element) => element.matiere == matiere).first;
  mat.note = newnote;
  mat.coeficient=coef;
  }
}