const mysql = require('mysql'); 
const util = require('util');

//connection 
const connection = mysql.createConnection({
  port: 3001,
  host: 'localhost',
  user: 'root',
  password: 'Ballinger15',
  database: 'employees',
}); 

connection.connect();
connection.query = util.promisify(connection.query);
module.exports = connection; 