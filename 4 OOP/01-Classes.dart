class Data {
  int dia = 0;
  int mes = 0;
  int ano = 0;

  int _atributoPrivado = 10;

  Data([this.dia = 1, this.mes = 11, this.ano = 1970]) {}
  Data.com({this.dia = 1, this.mes = 11, this.ano = 1970}) {}

  Data.ultimoDiaDoAno(int anoInicial) {
    dia = 31;
    mes = 12;
    ano = anoInicial;
  }

  dataFormatada() {
    return "$dia/$mes/$ano";
  }

  // método get
  int get atributoPrivado {
    return _atributoPrivado;
  }

  // método set
  void set atributoPrivado(int novoValor) {
    _atributoPrivado = novoValor;
  }

  @override
  String toString() {
    return dataFormatada();
  }
}

void main() {
  Data niver = new Data();
  print(niver);

  Data niver2 = new Data(29, 11, 1999);
  print(niver2);

  Data niver3 = new Data.com(ano: 2023);
  print(niver3);

  print(niver3._atributoPrivado);

  print(new Data.ultimoDiaDoAno(2023));
}
