import 'dart:async';
import 'dart:convert';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {

  // ------------------------------------------------------------------------------------------------------------------------------------------//
  // ------------------------------------- Cria as constantes do banco de dados --------------------------------------------//

  static final DB _instance = new DB.getInstance();

  factory DB() => _instance;

  DB.getInstance();

  static Database _db;

  // ------------------------------------- Cria instancias do banco de dados, verifica se existe, determina versao e fecha conexao --------------------------------------------//

  // ---- Verifica se ja existe instancia do banco criada ----//

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  // ---- Cria o banco de dados e determina versao ----//

  initDb() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'todo.db');
    print("db $path");
    // para testes vc pode deletar o banco
    //await deleteDatabase(path);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  // ---- Fecha conexao com banco de dados ----//

  Future close() async {
    var dbClient = await db;
    return dbClient.close();
  }

  // ------------------------------------------------------------------------------------------------------------------------------------------//

  // ------------------------------------- Cria tabelas do banco de dados e insere registros padroes --------------------------------------------//

  // ---- Cria as tabelas do banco de dados e os relacionamentos ----//

  final String SQLPESSOA = 'CREATE TABLE pessoa('
      'idPessoa INTEGER PRIMARY KEY AUTOINCREMENT,'
      ' nome TEXT NOT NULL,'
      ' sobrenome TEXT NOT NULL,'
      ' email TEXT NOT NULL,'
      ' senha TEXT NOT NULL,'
      ' telefone TEXT NOT NULL,'
      ' permissao INTEGER NOT NULL)';
  final String SQLTAREFA = 'CREATE TABLE tarefa('
      'idTarefa INTEGER PRIMARY KEY AUTOINCREMENT,'
      'titulo TEXT NOT NULL,'
      'descricao TEXT,'
      '_dataCriacao TEXT,'
      '_dataAlteracao TEXT NOT NULL,'
      'status INTEGER NOT NULL,'
      'idPessoa INTEGER NOT NULL)';
  // ---- Insere os registros padroes no banco de dados ----//


  // ---- Executa a acao para criar as tabelas e inserir os registros ----//

  void _onCreate(Database db, int newVersion) async {
    await db.execute(
        SQLPESSOA
    );
    await db.execute(
        SQLTAREFA
    );

  }
}