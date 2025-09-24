
void main(List<String> args)
{
  terrainDeJeuChainesDeCaractere();
}

void terrainDeJeuChainesDeCaractere() {
  basicStringDeclaration();
  multiLigneStrings();
  concatenationTraditionelle();
  modernInterpolation();
}

void basicStringDeclaration() {

  //Quotes simples
  print('Quotes simples');
  //variable de type chaine caractéres
  final unePhrase='Une chaine avec l\'échappement de caractére';
  print(unePhrase);

  //Quotes doubles
  print("Bonjour pour les quotes doubles");
  final uneAutrePhrase="Des 'quotes simples' dans des quotes doubles";
  print(uneAutrePhrase);
  // Combinaison des quotes simples et des quotes double
  final uneTroisiemePhrase='Des "quotes double" dans des quotes simples ';
  print(uneTroisiemePhrase);
}

void multiLigneStrings()
{
  final femmeNoire="""
Femme nue , femme noire
Vétue de tacouleur qui est vie , ...
  """;
  print(femmeNoire);
}

void concatenationTraditionelle()
{
  final hello='Hello';
  final world='world';
  //L'operation plus permet de concaatener des chaine
  final chainesCombinees=hello+' '+world;
  print(chainesCombinees);
}

void modernInterpolation()
{
  final annee=2011;
  //Le caractere $ permet de donner le nom d'une variable dans la chaine
  final interpolated="dart est créé en $annee";
  print(interpolated);
  final age=20;
  // Avec la combinaison des caractéres ${} pour mettre des expression
  print("je suis ${age>=18?'Majeur':'Mineur'}");
}