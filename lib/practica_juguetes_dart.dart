class Toys{
  double? _cuv = 2;
  
  void set setCuv(double cuv){
    _cuv = cuv;
  }
}

class Ballons extends Toys{
  final double? _radio;
  static const int mulradio = 3;

  Ballons(this._radio);

  //getter del radio
  double? get getRadio => _radio;
  
  //costo del juguete
  double cost() => mulradio*_radio!*_cuv!; 

  int eficacia() => 12;
}
class Piece extends Toys{
  int? _volumen;

  Piece(this._volumen);

  int? get getVolumen => _volumen!;
  //con el signo de admiracion ! nos lanza una expcion si la variable contiene un valor nulo y con el de ? te retorna un valor null.
  double cost() => _cuv!*_volumen!;
}

class Baldecito extends Toys{
  List<Piece>? _pieceOfTheToy;

  Baldecito(this._pieceOfTheToy);
  //getters
  int cantPieces() => _pieceOfTheToy!.length;

  int fixedCost() => 5;
  //this method returns the piece whit the higher volume 
  Piece pieceHigherVolume() => _pieceOfTheToy!.reduce((curr, next) => curr.getVolumen!>next.getVolumen! ? curr:next);

  double cost() => fixedCost()+(cantPieces()*pieceHigherVolume().cost());

  int eficacia(){
    const fixedMin = 3;
    return fixedMin*fixedCost();
  }
}
class TachitosApilables extends Baldecito{

  TachitosApilables(List<Piece> PieceOfTheToy):super(PieceOfTheToy);
  
  @override
  int fixedCost() => 3;
  @override
  int eficacia() => _pieceOfTheToy!.map((piece) => piece.getVolumen).toList().fold<int>(0, (curr, next) => curr+next!);
}