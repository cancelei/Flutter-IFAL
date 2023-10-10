import "./01-Classes.dart";

void main(List<String> args) {
  Data data = new Data();
  print(data);
  print(data.atributoPrivado);
  data.atributoPrivado = 400;
  print(data.atributoPrivado);
}
