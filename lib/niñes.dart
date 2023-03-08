import 'package:practica_juguetes_dart/practica_juguetes_dart.dart';

class NinieTipique{
  List? _listToys;
  int? _ageMonths;

  NinieTipique(this._listToys,this._ageMonths);

  List get getListToys => _listToys!;

  double coeficiente() => 1+(_ageMonths!/100);
  double entertain(var toy) => double.parse((toy.eficacia()*coeficiente()).toStringAsFixed(1));
  void giftToy(var toy){
    _listToys!.add(toy);
  }
}
class NinieCuriose extends NinieTipique{
  NinieCuriose(List toys,int age):super(toys,age);

  @override
  double entertain(var toy) {
    const mulTime = 1.5;
    return double.parse((super.entertain(toy)* mulTime).toStringAsFixed(1));
  }
  @override
  void giftToy(toy){
    const topPrice = 150;
    if(toy.price()<=topPrice){
      _listToys!.add(toy);
    }
  } 
}
class NinieRevolose extends NinieTipique{
  NinieRevolose(var listToys, ageMhonts):super(listToys,ageMhonts);

  @override
  double entertain(var toy){
    return double.parse((super.entertain(toy)/2).toStringAsFixed(1));
  }
  @override
  void giftToy(toy){
    if (entertain(toy)>7){
      _listToys!.add(toy);
    }
  }
}