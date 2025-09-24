class rectangle{
  int Largeur;
  int Hauteur;
  rectangle({required this.Largeur,required this.Hauteur});

  int get GetLargeur=>Largeur;

  int get getHauteur{
    return Hauteur;
  }
  int perimetre()=>Hauteur+Largeur;
  int surface()=>Largeur*Hauteur;
  set SetLargeur(int L)=>Largeur=L;
  set SetHauteur(int H){
    Hauteur=H;
  }
  bool compare(rectangle R){
    return (Largeur==R.Largeur)&&(Hauteur==R.Hauteur);
  }
  void afficher()=>print("L=${Largeur} et H=${Hauteur}");
  @override
  String toString() {
    // TODO: implement toString
    return "L=${Largeur} et H=${Hauteur}";
  }
  @override
  bool operator ==(Object other) {
    // TODO: implement ==
    if(other is rectangle)
      return (Largeur==other.Largeur)&&(Hauteur==other.Hauteur);
    return false;
  }
  

}

void main(List<String> args){
  rectangle R=rectangle(Largeur: 10, Hauteur: 15);
  rectangle R1=rectangle(Largeur: 3, Hauteur: 7);
  rectangle R2=rectangle(Largeur: 30, Hauteur: 40);
  print("pour R on a une largeur de ${R.GetLargeur} et un hauteur de ${R.getHauteur}");
  print("On affiche R1 et R2 Via leur surdefinition de tosrting");
  print("Pour R1 on a $R1");
  print("Pour R2 on a $R2");
  print("Utilisation des seters pour modifier R");
  R.SetLargeur=12;
  R.SetLargeur=12;
  print(R);
  print("On compare R et R1 ");
  if(R==R1)
    print("R1 egal a R");
  else
    print("R1 != R");
  
  R2.afficher();

}