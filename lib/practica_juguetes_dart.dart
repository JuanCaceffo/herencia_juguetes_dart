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
  double price() => mulradio*_radio!*_cuv!; 
}
class Piece extends Toys{
  double? _volumen;

  Piece(this._volumen);

  double? get getVolumen => _volumen!;
  //con el signo de admiracion ! nos lanza una expcion si la variable contiene un valor nulo y con el de ? te retorna un valor null.
  double price() => _cuv!*_volumen!;
}

class Baldecito extends Toys{
  List<Piece>? _pieceOfTheToy;

  Baldecito(this._pieceOfTheToy);
  //getters
  int cantPieces() => _pieceOfTheToy!.length;

  int fixedPrice() => 5;
  //this method returns the piece whit the higher volume 
  Piece pieceHigherVolume() => _pieceOfTheToy!.reduce((curr, next) => curr.getVolumen!>next.getVolumen! ? curr:next);

  double price() => fixedPrice()+(cantPieces()*pieceHigherVolume().price());
}
class TachitosApilables extends Baldecito{

  TachitosApilables(List<Piece> PieceOfTheToy):super(PieceOfTheToy);
  
  @override
  int fixedPrice() => 3;
}