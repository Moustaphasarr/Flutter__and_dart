
void main(List<String> args)
{
  //Map vide clé de type string et valeur de type entier
  var superficieRegions=Map<String,int>();
  superficieRegions={
    "Dakar" : 547,
    "Zinguinchor" : 7352,
    "Saint-Louis" : 19241
  };

  //ajout de nouveau élément dans le map
  superficieRegions["Diourbel"]=4842;
  superficieRegions["Tambacounda"]=42364;
  superficieRegions["Thies"]=6670;
  print("Superficie des régions $superficieRegions");
  //Utilisation de foreach avec kes map
  print("Meilleur présentation avec forEcah");
  superficieRegions.forEach((cle,valeur)=>print("${cle.padRight(15 )} ---> $valeur"));
  printEmployer();
  
  // La Propriétés keys retourne l'nesemble des clés du Map.
  print(superficieRegions.keys);
  // La Propriété Values permet de rourner  l'ensemble des valeurs du Map
  print(superficieRegions.values);
  //La méthode containsKey('key') permet de verifier si le Map contient la clé fourni en paramétre
  if(superficieRegions.containsKey("Zinguinchor"))
    print("La clé Zinguinchor est dans le Map");
  
  //La méthode containsValue('value')  permet de verifier si le Map contient la valeur value
  if(superficieRegions.containsValue(42364)) 
    print("Le map contient la valeur 42364");
 
  // La méthode clear permet de supprimer l'ensemble des élément d'un Map
  superficieRegions.clear();
  print(superficieRegions);

  // removeWhere() : Elle permet de supprimer toutes les paires clé/valeur 
  //qui satisfont une condition (un prédicat).
  // map.removeWhere((key, value) => condition);
  Map<String, int> notes = {
    "Math": 18,
    "Anglais": 12,
    "Physique": 8,
    "SVT": 15
  };

  // Supprimer les matières avec une note < 10
  notes.removeWhere((matiere, note) => note < 10);

  print(notes); // Résultat : {Math: 18, Anglais: 12, SVT: 15

  //remove('key') :Supprime une seule entrée du Map en utilisant la clé exacte.
  //Si la clé existe → l’entrée est supprimée et la valeur correspondante est retournée.
  //Si la clé n’existe pas → retourne null.
  var valeurSupprimee = notes.remove("Anglais");
  print(valeurSupprimee); // 12
  print(notes); // {Math: 18, Physique: 8}

}

//Créez une fonction printEmployer suivante et appelez la dans la fonction main()
void printEmployer()
{
  // clés sont des entier et les valeurs des map
    Map employes={
      200: {
        "nom" : "Abdoulaye Ndiaye",
        "Sérvice" : "Comptabilité",
        "Salaire" : 800000

      },
      201:{
        "nom" : "Mareme Diouf",
        "Sérvice" : "Vente",
        "Salaire" : 950000
      },
      600:{
        "nom" : "Fatou Diallo",
        "Sérvice" : "Marketing",
        "Salaire": 975000
      }
    };

    print("-"*85);
    String headerLine= "|" + "ID".padLeft(20) + "|";
    employes[200].keys.forEach((element){
      headerLine +=element.toString().padLeft(20) +"|";
    });

    print(headerLine);
    print("-"*85);
    employes.forEach((keyEmploye,dataEmploye){
      print("|${keyEmploye.toString().padLeft(20)}"
      "|${dataEmploye["nom"].toString().padLeft(20)}"
      "|${dataEmploye["Sérvice"].toString().padLeft(20)}"
      "|${dataEmploye["Salaire"].toString().padLeft(20)}|"
      );
      print("-" * 85);
    });

}