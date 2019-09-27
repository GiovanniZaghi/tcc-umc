class Pessoa{
  int _idPessoa;
  String _nome;
  String _sobrenome;
  String _email;
  String _senha;
  String _telefone;
  int _permissao;

  Pessoa(this._idPessoa, this._nome, this._sobrenome, this._email, this._senha, this._telefone,
      this._permissao);

  int get permissao => _permissao;

  set permissao(int value) {
    _permissao = value;
  }

  String get telefone => _telefone;

  set telefone(String value) {
    _telefone = value;
  }

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get sobrenome => _sobrenome;

  set sobrenome(String value) {
    _sobrenome = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  int get idPessoa => _idPessoa;

  set idPessoa(int value) {
    _idPessoa = value;
  }

  @override
  String toString() {
    return 'Pessoa{_idPessoa: $_idPessoa, _nome: $_nome, _sobrenome: $_sobrenome, _email: $_email, _senha: $_senha, _telefone: $_telefone, _permissao: $_permissao}';
  }




}