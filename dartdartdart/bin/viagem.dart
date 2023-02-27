import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "DNFEKNW";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

  void escolherMeioDeTransporte(Transporte locomocao) {
    switch(locomocao) {
      case Transporte.carro:
        print("vou de carro");
        break;
      case Transporte.bike:
        print("vou de  bike");
        break;
      default:
        print("vou para aventura!!!");
        break;
    }
  }
  void printCodigo() {
    print(codigoTrabalho);
  }
  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQnt) {
    if (novaQnt < 10) {
      _totalLocaisVisitados = novaQnt;
    } else {
      print("Não foi possível");
    }
  }
}