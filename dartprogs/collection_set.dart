
void main(List<String> args)
{
  // création de l'ensemble vide inférence de type
  var unEnsemble=<int>{};
  // utilisation des méthode add et addAll
  unEnsemble.add(1);
  unEnsemble.addAll([99,12,5,2]);
  print("Ensemble -->$unEnsemble");
  // création avec spécification de type  vec le mot clé set
  Set<int> unAutreEnsemble={1,2,3,4,1,3,3};

  //les doublons seront suoorimer même si on en ajoute
  print("Contenu de l'ensemble sans répétition --> $unAutreEnsemble");
  //Test d'inclusion avec la methode contains .
  print("1 inclus dans unEnsemble :${unEnsemble.contains(1)}");
  print("99 inclus dans unAutreEnsemble :${unAutreEnsemble.contains(1)}");
  // Méthode intersection de deux ensembles.
  var intersection=unEnsemble.intersection(unAutreEnsemble);
  // Méthode reunion de deux ensembles.
  var union=unEnsemble.union(unAutreEnsemble);
  // Méthode différence de deux ensembles(operation non commutative).
  var difference1=unEnsemble.difference(unAutreEnsemble);
  var difference2=unAutreEnsemble.difference(unEnsemble);
  print("INTERSECTION --> $unEnsemble INTER $unAutreEnsemble =$intersection");
  print("UNION --> $unEnsemble union $unAutreEnsemble =$union");
  print("DIFFERENCE --> $unEnsemble - $unAutreEnsemble = $difference1");
  print("DIFFERENCE --> $unAutreEnsemble - $unEnsemble = $difference2");

  //parcour avec des opérateurs
  print("Utilisation d'itérateurs");
  for(var n in union)
    print(n);

}