
void main(List<String> args)
{
  terrainDeJeuVariables();

}

void terrainDeJeuVariables() {
  print("Les types de variable en Dart");
  typesDeBase();
  print("Les  variables non typées avec dynimic avec laquelle le type change a chaque nouvelle affectation");
  variablesNonTypees();
  print("Les variables non typées avec var dont laquelle le type ne change pas aprés la premiére afectation");
  print("Interpolation de type");
  interpolationDeType();
  print("Declartion de variable avec const et final ");
  variablesImmutables();

}

void typesDeBase() {
  int quatre=4; //  Déclaration d'un entier
  double pi=3.14; //  Déclaration d'un réel
  num unNombr=1.42e5;// num: il peut etre int ou double
  bool oui=true; // boolean avec la constante true
  bool non=false; // boolean avec la constante false
  int? nothing; // variable non initialisée valeur par défaut null

  print(quatre);
  print(pi); 
  print(unNombr);
  print(oui);
  print(non);
  print(nothing);
}

void variablesNonTypees()
{
  dynamic camaleon="Yahoo"; //Déclaration comme dynamic de type chaine
  print(camaleon.runtimeType);
  camaleon=3.14; // type change a double
  print(camaleon.runtimeType);
  camaleon=[1,2,3]; // type change à List
  print(camaleon.runtimeType);
}

void interpolationDeType()
{
  var unInteger=15; // Dart  va déduire le type int 
  var unDouble=27.6; // Dart  va déduire le double
  var unBoolean=false; // Dart  va déduire le bool

  print(unInteger.runtimeType);
  print(unInteger);

  print(unDouble.runtimeType);
  print(unDouble);

  print(unBoolean.runtimeType);
  print(unBoolean);
}

void variablesImmutables()
{
  //Declaration avec final et le type explicite(int ,double) + initialisation
  final int immutableInt=100000;
  final double immutableDouble=10.015e10;
  print(immutableInt);
  print(immutableDouble);
  // Avec final la pRécison du type est optionel
  final interpolateInteger;
  final interpolateDouble;

  interpolateInteger=123456;
  interpolateDouble=123.456;
  print(interpolateInteger);
  print(interpolateDouble);

  // Avec le mot clé const , l'initialisation est obligatoire à la déclaration 
  //et le type est toujour inféré
  const aconst=true;
  print(aconst);   


}