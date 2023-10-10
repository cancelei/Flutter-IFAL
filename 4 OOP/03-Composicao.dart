class Cliente {
  String nome;
  String cpf;

  Cliente({this.nome = "", this.cpf = ""}) {}
}

class Produto {
  String nome;
  double preco;
  int quantidade;

  Produto({this.nome = "", this.preco = 0, this.quantidade = 0}) {}
}

class Venda {
  List<Produto> produtos;
  Cliente cliente = new Cliente();

  Venda({this.produtos = const []}) {}
}

void main(List<String> args) {
  Venda venda1 = new Venda(produtos: [
    new Produto(nome: "Sabão", preco: 2.30, quantidade: 5),
    new Produto(nome: "Shampoo", preco: 7.90, quantidade: 1)
  ]);
  venda1.cliente = new Cliente(nome: "Flávio", cpf: "984.434.234-45");
  print(venda1);
}
