import 'package:practica_juguetes_dart/practica_juguetes_dart.dart';

class NinieTipique{
  List? _listToys;
  int? _ageMonths;

  NinieTipique(this._listToys,this._ageMonths);

  List get getListToys => _listToys!;

  double coeficiente() => 1+(_ageMonths!/100);
  double entreain(var toy) => double.parse((toy.eficacia()*coeficiente()).toStringAsFixed(1));
}
class NinieRevoltose extends NinieTipique{
  NinieRevoltose(List toys,int age):super(toys,age);

  @override
  double entreain(var toy) {
    const mulTime = 1.5;
    return double.parse((super.entreain(toy)* mulTime).toStringAsFixed(1));
  } 

}