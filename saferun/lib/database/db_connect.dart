class Database {
  //Singleton Class
  Database._(); //Private Constructor of Database Class.
  //It is necessary to have only single call thorough whole project.
  // Database(); //Whole Project can access it.

  //A function to call a private constructor of dart . for database.
  /*static Database getInstance() {
    return Database._();
  }*/

  static final Database getInstance = Database._();

  //Db Opens(if-> exists then open else create)
//all Queries.
}
