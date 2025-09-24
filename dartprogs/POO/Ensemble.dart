
class ensemble{
  List L=<int>[];
  int cardinal=0;
  int N;
  ensemble({required this.N});

  int get Cardinal=>cardinal;

  void ajouter(int x)
  {
    if((cardinal<N)&& !L.contains(x))
    {
      L.add(x);
      cardinal++;
    }else{
      print("Liste pleine");
    }
  }
  void supprimer(int x)
  {
      if(cardinal>0)
      {
        L.remove(x);
        cardinal--;
      }
        
  }

  bool contient(int x)=>L.contains(x);

 void afficher()=>L.forEach((x)=>print(x));

}

void main(List<String> args)
{
  ensemble E=ensemble(N: 4);
  print("le cardinal de l'ensemble est : ${E.cardinal}");
  print("${E.N}");
  E.afficher();
  E.ajouter(2);
  E.ajouter(3);
  E.ajouter(5);
  E.ajouter(6);
  E.ajouter(7);
  E.ajouter(3);
  E.ajouter(90);
  E.afficher();
}