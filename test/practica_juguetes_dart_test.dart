import 'package:practica_juguetes_dart/practica_juguetes_dart.dart';
import 'package:practica_juguetes_dart/niñes.dart';
import 'package:test/test.dart';

void main() {
  //class instances
  final pelota1 = Ballons(4);
  final part1 = Piece(4);
  final part2 = Piece(2,color: "rosa");
  final part3 = Piece(5);
  final tachitos1 = TachitosApilables([part1,part2,part3]);
  final baldecito1 = Baldecito([part1,part2,part3]);
  final ninieNormie = NinieTipique([pelota1,baldecito1], 10);
  final ninieCurioso = NinieCuriose([pelota1,tachitos1], 10);
  final nineRevoltoso = NinieRevolose([tachitos1, baldecito1],15);
  group("test jugetes", (){
    group("test para pelota", (){
      test("la pelota tiene un costo de 24",(){
        expect(pelota1.cost(), 24);
      });
      test("la eficacia de la pelota es siempre de 12",(){
        expect(pelota1.eficacia(), 12);
      });
      test("pelota tiene que tener un precio de 144",(){
        expect(pelota1.price(), 144);
      });
    }); 
    group("test para tachitos1", (){
      test("el costo de tachitos1 es de 33", (){
        expect(tachitos1.cost(), 33);
      });
      test("tachito1 tiene una eficacia de 11",(){
        expect(tachitos1.eficacia(), 11);
      }); 
      test("tachito1 tiene que tener un precio de 164", (){
        expect(tachitos1.price(),163);
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
      test("baldecito1 tiene un precio de 145", (){
        expect(baldecito1.price(),145);
      });
    });
  });
  group("test ninies", (){
    group("test ninie tipique", (){
      test("coeficiente del ninieNormie es 1.1", (){
        expect(ninieNormie.coeficiente(), 1.1);
      });
      test("ninieNormie debe ser entretenido por 13.1 minutos", (){
        expect(ninieNormie.entertain(pelota1), 13.2);
      });
      test("ninie normi acepta el tachito",(){
        ninieNormie.buyToy(tachitos1);
        expect(ninieNormie.getListToys.length, 3);
      });
    });
    group("test ninies curiosos", (){
      test("el niniocurioso con la pelota1 es entretenido por 19.6 minutos", (){
        expect(ninieCurioso.entertain(pelota1), 19.8);
      });
      test("nine curioso no acepta el tachito1", (){
        expect(()=>ninieCurioso.buyToy(tachitos1),throwsA(isA<Exception>()));
        expect(ninieCurioso.getListToys.length, 2);
      });
      test("nine curiose acepta la pelota", (){
        ninieCurioso.buyToy(pelota1);
        expect(ninieCurioso.getListToys.length, 3);
      });
    });
    group("nines revoltoses", (){
      test("entetenimiento de ninie revoltoso con los tachitos es 6.3",(){
        expect(nineRevoltoso.entertain(tachitos1), 6.3);
      });
      test("ninine revoltose se entretiene 9mins con la peltoa", (){
        expect(nineRevoltoso.entertain(pelota1), 6.9);
      });
      test("el ninie revoltose no acpeta los tachitos y genera una execpcion", (){
        expect(()=>nineRevoltoso.buyToy(tachitos1), throwsA(isA<Exception>()));
        expect(nineRevoltoso.getListToys.length, 2);
      });
    });
  });
}
