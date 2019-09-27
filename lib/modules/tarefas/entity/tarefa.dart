class Tarefa{
  int _idTarefa;
  String _titulo;
  String _descricao;
  String _dataCriacao;
  String _dataAlteracao;
  int _status;
  int _idPessoa;

  Tarefa(this._idTarefa, this._titulo, this._descricao, this._dataCriacao,
      this._dataAlteracao, this._status, this._idPessoa);

  int get idPessoa => _idPessoa;

  set idPessoa(int value) {
    _idPessoa = value;
  }

  int get status => _status;

  set status(int value) {
    _status = value;
  }

  String get dataAlteracao => _dataAlteracao;

  set dataAlteracao(String value) {
    _dataAlteracao = value;
  }

  String get dataCriacao => _dataCriacao;

  set dataCriacao(String value) {
    _dataCriacao = value;
  }

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }

  String get titulo => _titulo;

  set titulo(String value) {
    _titulo = value;
  }

  int get idTarefa => _idTarefa;

  set idTarefa(int value) {
    _idTarefa = value;
  }

  @override
  String toString() {
    return 'Tarefa{_idTarefa: $_idTarefa, _titulo: $_titulo, _descricao: $_descricao, _dataCriacao: $_dataCriacao, _dataAlteracao: $_dataAlteracao, _status: $_status, _idPessoa: $_idPessoa}';
  }


}