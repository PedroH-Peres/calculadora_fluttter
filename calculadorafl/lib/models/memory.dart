class Memory{
  static const operations = ['%', '/', 'x', '-', '+', '='];
  String _value = '0';
  int _bufferIndex = 0;
  String? _operation;
  final _buffer = [0.0, 0.0];
  bool _wipeValue = false;
  String? _lastCommand;

  void applyCommand(String command){

    if(_isReplacingOp(command)){
      _operation = command;
      return;
    }
    if(command == 'AC'){
      _allClear();
    }else if(operations.contains(command)){
      _setOperation(command);
    }else{
      _addDigit(command);
    }

    _lastCommand = command;
  }

  _isReplacingOp(String command){
    return operations.contains(_lastCommand) && operations.contains(command) && _lastCommand != '=' && command != '=';
  }

  _setOperation(String newOp){
    bool isEqual = newOp == '=';
    if(_bufferIndex == 0){
      if(!isEqual){
      _operation = newOp;
      _bufferIndex = 1;
      _wipeValue = true;
      }
    }else{
      _buffer[0] = _calculate();
      _buffer[1] = 0.0;
      _value = _buffer[0].toString();
      _value = _value.endsWith('.0') ?_value.split('.')[0] : _value;


      _operation = isEqual ? null : newOp;
      _bufferIndex = isEqual ? 0 : 1;
    }

    _wipeValue =  true;
  }

  _addDigit(String digito){
    final isDot = digito == '.';
    final wipeValue = _value == '0' && !isDot || _wipeValue;

    if(isDot && _value.contains('.') && !wipeValue){
      return;
    }
    final emptyValue = isDot ?'0' : '';
    final currentValue = wipeValue ? emptyValue : _value;
    _value = currentValue + digito;
    _wipeValue = false;

    _buffer[_bufferIndex] = double.tryParse(_value) ?? 0;
  }

  _allClear(){
    _value = '0';
    _buffer.setAll(0, [0.0, 0.0]);
    _operation = null;
    _bufferIndex = 0;
    _wipeValue = false;
  }

  _calculate(){
    switch(_operation){
      case '%': return _buffer[0] % _buffer[1];
      case '/': return _buffer[0] / _buffer[1];
      case 'x': return _buffer[0] * _buffer[1];
      case '+': return _buffer[0] + _buffer[1];
      case '-': return _buffer[0] - _buffer[1];
      default: return;
    }
  }

  String get value {
    return _value;
  }
}