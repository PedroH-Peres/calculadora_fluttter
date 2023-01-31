class Memory{
  static const operations = ['%', '/', 'x', '-', '+', '='];
  String _value = '0';
  int _bufferIndex = 0;
  String? operation;
  final _buffer = [0.0, 0.0];
  bool _wipeValue = false;

  void applyCommand(String command){
    if(command == 'AC'){
      _allClear();
    }else if(operations.contains(command)){
      _setOperation(command);
    }else{
      _addDigit(command);
    }
  }

  _setOperation(String newOp){
    _wipeValue =  true;
  }

  _addDigit(String digito){

    final wipeValue = _value == '0' || _wipeValue;

    final currentValue = wipeValue ? '' : _value;
    _value = currentValue + digito;
    _wipeValue = false;
  }

  _allClear(){
    _value = '0';
  }
  String get value {
    return _value;
  }
}