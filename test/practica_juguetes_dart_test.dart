import 'package:practica_juguetes_dart/practica_juguetes_dart.dart';
import 'package:test/test.dart';

void main() {
  //class instances
  final pelota1 = Ballons(4);
  final part1 = Piece(4);
  final part2 = Piece(2);
  final part3 = Piece(5);
  final tachitos1 = TachitosApilables([part1,part2,part3]);
  final baldecito1 = Baldecito([part1,part2,part3]);
  
  group("test para pelota", (){
    test("la pelota tiene un costo de 24",(){
      expect(pelota1.cost(), 24);
    });
    test("la eficacia de la pelota es siempre de 12",(){
      expect(pelota1.eficacia(), 12);
    });
  }); 
  group("test para tachitos1", (){
    test("el costo de tachitos1 es de 33", (){
      expect(tachitos1.cost(), 33);
    });
    test("tachito1 tiene una eficacia de 11",(){
      expect(tachitos1.eficacia(), 11);
    }); 
  });
  group("test para baldecito1",() {
    test("la pieza mas grande del baldecito1 es part3",(){
      expect(baldecito1.pieceHigherVolume(), part3);
    });
    test("el baldecito1 debe tener 3 piezas", (){
      expect(3, baldecito1.cantPieces());
    });
    test("el baldecito1 tiene un costo de 35", (){
      expect(baldecito1.cost(), 35);
    });
    test("valdecito1 tiene una eficacia de 9", (){
      expect(baldecito1.eficacia(), 9);
    });
  });
}
