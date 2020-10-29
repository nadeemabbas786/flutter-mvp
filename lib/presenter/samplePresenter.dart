import 'package:flutter_mvp/model/sampleModel.dart';
import 'package:flutter_mvp/presenter/interfaceClass.dart';

class SamplePresenter {

  SampleModel _sampleModel;
  InterfaceClass _interfaceClass;

  SamplePresenter(InterfaceClass sampleView){
   this._sampleModel = new SampleModel();
   this._interfaceClass = sampleView;
  }

  void multiplication(double a, double b){
    double result = _sampleModel.makeMultiplication(a, b);
    _interfaceClass.updateResultValue(result);
  }

  void addition(double a, double b){
    double result = _sampleModel.makeAddition(a, b);
    _interfaceClass.updateResultValue(result);
  }

  void subtraction(double a, double b){
    double result = _sampleModel.makeSubtraction(a, b);
    _interfaceClass.updateResultValue(result);
  }

  void division(double a, double b){
    double result = _sampleModel.makeDivision(a, b);
    _interfaceClass.updateResultValue(result);
  }

}


