class documents{
  String titre;
  List ListeMot;
  documents(this.titre, this.ListeMot);

}

class site{
  List<documents> LesDoc=[];
  void ajouter(documents D)=>LesDoc.add(D);
  void supprimer(String title)
  {
    LesDoc.forEach((D){
      if(LesDoc.contains(title))
        LesDoc.remove(D);
    });
  }
}