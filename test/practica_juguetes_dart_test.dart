import 'package:practica_juguetes_dart/practica_juguetes_dart.dart';
import 'package:test/test.dart';

void main() {
  //class instances
  final part1 = Piece(4);
  final part2 = Piece(2);
  final part3 = Piece(5);
  final baldecito1 = Baldecito([part1,part2,part3]);
  
  group("test para baldecito1",() {
    test("la pieza mas grande del baldecito1 es part3",(){
      expect(baldecito1.pieceHigherVolume(), part3);
    });
    test("el baldecito1 debe tener 3 piezas", (){
      expect(3, baldecito1.cantPieces());
    });
    test("el baldecito1 tiene un precio de 35", (){
      expect(baldecito1.price(), 35);
    });
  });
}
