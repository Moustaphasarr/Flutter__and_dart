
void main(List<String> args)
{
  //créer une liste vide de chaine de caractéres
  final List<String> jours=[];
  //Affiche si la liste est vide ou pas
  print("La liste est vide :${jours.isEmpty}");
  jours.add("Lundi");
  jours.add("Mardi");
  jours.add("Mercredi");

  //notez l'utilsation propriété length
  print("$jours est de taille ${jours.length}");

  //ajout de plusieurs élement la methode addAll(fusion de tableau)
  jours.addAll([
    "Jeudi",
    "Vendredi",
    "Samedi",
    "Dimanche"
  ]);
  print("Les ${jours.length} jours de la semaine sont : $jours");
  // Utilisation des propriétés first et last
  print("${jours.first}--> ${jours.last}");

  // methode toList , shuffle et join
  var ordrealeatoire=jours.toList(); // crée une copie de la liste 
  ordrealeatoire.shuffle(); // Mélange
  print("Dans un ordre aléatoire : ${ordrealeatoire}");
  print("Liste vers CSV : ${jours.join(";")}");

  ordrealeatoire.sort((String str1,String str2)=>str1.compareTo(str2),);
  print("jours triés $ordrealeatoire");
  // Fonction de trie sur des entiers 
  var nombres=[13,4,15,6];
  nombres.sort();
  print("Nombres triés $nombres");
  //map permet d'executer des instruction sur chaque élément 
  var nouveauxJours=jours.map((Unjour){
    return Unjour.toUpperCase();
  }).toList() ;
  print("$jours ---> $nouveauxJours");
  
  //reduce permet de combiner les élement d'un tableau
  final nombreReels=<double>[10,2,5,0.5];
  //calcule de la somme
  var somme=nombreReels.reduce((value,element)=>value+element);
  // clacule de la moyenne
  var moyennne=nombreReels.reduce((value,element)=>value+element / nombreReels.length);
  // calcul du max
  var max=nombreReels.reduce((val1,val2)=> val1 > val2 ? val1 :val2);
  //calcul du min
  var min=nombreReels.reduce((val1,val2)=> val1 > val2 ? val2 :val1);
  print("Tableau --> $nombreReels");
  print("Max : $max -- Min: $min -- Somme : $somme -- Moyenne : $moyennne");
  //Il est possible avec la méthode forEach ou la boucle for-in de parcourir la liste 
  //pour faire des traitements. Mettons en oeuvre ces deux méthodes avec la
  nombreReels.forEach((element)=>print("${element*2}"));
  print("-"*10);
  //parcourir avec la méthode for-in qui s'applique a des itérables
  for(var nb in nombreReels)
    print("${2*nb}");

  //clear() → vide toute la liste.
  var test=[1,2,4,6];
  print("la liste avant la methode clear $test");
  test.clear();
  print("apres la methode clear $test");

  //replaceRange(int start, int end, Iterable<E> remplacement)
  //👉 Remplace les éléments compris entre start (inclus) et end (exclu) par une nouvelle liste.
  List<String> fruits = ["pomme", "banane", "mangue", "orange"];
  fruits.replaceRange(1, 3, ["kiwi", "fraise"]); 
  print(fruits); // [pomme, kiwi, fraise, orange]

  //remove(E element)
  //👉 Supprime la première occurrence de l’élément donné.
  print("on supprime fraise");
  fruits.remove("fraise");
  print("--> $fruits");
  //removeAt(int index)
  //👉 Supprime l’élément à la position donnée.
  print("on supprime l'element a la position Un de notre liste -->$fruits");
  fruits.removeAt(1);
  print(fruits);
  //removeLast()
  //👉Supprime et retourne le dernier élément de la liste.
  List<int> nombre = [1, 2, 3, 4];
  var dernier = nombre.removeLast();
  print(dernier); // 4
  print(nombre); // [1, 2, 3]
  //removeRange(int start, int end)
  //👉 Supprime tous les éléments dans l’intervalle [start, end) (start inclus, end exclus).
  List<String> couleurs = ["rouge", "vert", "bleu", "jaune", "noir"];
  couleurs.removeRange(1, 4);
  print(couleurs); // [rouge, noir]
}