

typedef NouveauTypeDeFonction=int Function(int a,int b);
void main(List<String> args)
{
  classicalFunctions();
  optionalParameters();
  var maVariablefn=add;
  print("Résultat de ma variable fn ${maVariablefn(10,20)}");

  NouveauTypeDeFonction maVariablefn2=add;
  print("Résultat de ma variable fn ${maVariablefn2(10,20)}");
  //Déclarez et utilisez une fonction directement comme 
  //argument d’une autre fonction directement avec le code suivant :
  afficher(estPair);
  afficher(estImpair);
  //Fonctions anonymes :
  disBonjour((String message){
    print(message);
  },nom: "Mamadou");

  // d’utiliser la notation flèche (=>) pour les fonctions qui ne font que retourner une expression
  print(addArrow(4, 6));


}

void disBonjour(void f(String message) ,{String nom="" }) {
  f("Bonjour $nom soiyez le binevenue");
}

void classicalFunctions() {
  afficheMonNom("Mamadou");
  afficheMonNom("Ndey Fatou");
  final sum=add(5,3);
  print("5+3=$sum ");
  print("factorile de 10 est ${factoriel(10)}");

}
void optionalParameters() {
  fparametreOptionnels("Mamadou ",20);
  fparametreOptionnels("Seynabou");
  fparametreOptionnels();
  // Les parametres nommées peuvent être fournies dans n'importe quel ordre 
  //paramétre saluation seulement fournie
  fparametreNommes(salutation: "salutations respectueuse");
  //paramétre nom seulement fournie
  fparametreNommes(name: "Babacar");
  // parametre nom et salutation donnés dans l'ordre inverse .
  fparametreNommes(name: "Adama",salutation: "Binevenue");
}

int factoriel(int i) {
  if(i<=0)
    return 1;
  return i*factoriel(i-1);
}

int add(int i, int j) {
  return i+j;
}
// version arrow
int addArrow(int i , int j)=>i+j;

void afficheMonNom(String name) {
  print("Bonjour $name");
}


void fparametreOptionnels([String? name,int? age]) {
  final vraiNom=name ?? 'Inconnu';
  final vraiAge=age ?? 0;
  print("$vraiNom a $vraiAge"); 
}

void fparametreNommes({String? salutation,String? name})
{
  final vraiSalutation = salutation ?? "Bonjours";
  final vraiNom =name ?? "Personne mystere";

  print("$vraiSalutation  $vraiNom");
}

bool estPair(int x)=> x%2==0;
bool estImpair(int x)=> x%2!=0;

//l'argument de la fonction est une variable
void afficher(bool varFunctionTest(int value))
{
  for(int i=0;i<10;i++)
  {
    if(varFunctionTest(i))//appel de la fonction en argument
      print(i);
  }
}