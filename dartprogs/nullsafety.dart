void main(List<String> args)
{
  variableNullable();
}

void variableNullable() {
  // ajout de ? devant le type permet d'autoriser la baleur null
  String? nom=null;
  int? note;
  note=null;
  // note=note+13 produira une erreur de compilation car on peut effectuer de operation
  // avec des valeurs null
  if(note!=null)
  {
    note*=2;
    print(note);
  }
  // l'operatuer ?? veut dire : note ?? 1 <==> if(note == nul) return 1;
  note=(note ?? 1) + 13;
  print("Nom: ${nom ?? "nom inconnu"} Note: $note");
  //La Nulle Safety s’applique aussi aux paramètres de fonctions. Ecrire les fonctions 
  //suivantes et expliquez l’effet de int? value sur les paramètres de la fonction.
  makeIncrement();
}

void makeIncrement() {
  int? someNumber;
  inceraseValue(someNumber);
}

void inceraseValue(int? value) {
  value=value ?? 0; // Initialisation en cas de null
  value++;
  print(value);
}
