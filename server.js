const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const port = 3080;
const mysql = require('mysql');
const bcrypt = require('bcrypt');
const saltRounds = 3;

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: process.env.ROOT_MYSQL_PASS,
  database: "github_users_list"
});

connection.connect((error) => {
  if (error) throw error;
  console.log('Connected to DB!');
});

app.use(bodyParser.json());
// Uncomment line below when deployed to production
//app.use(express.static(process.cwd()+"/github-users-list/dist/github-users-list/"));

app.get('/api/users', (req, res) => {
  let sql = 'SELECT * FROM user';
  connection.query(sql, (error, results, fields) => {
    if (error) throw error;
    res.json(results);
  });
});

app.post('/api/user', async (req, res) => {
  let user = req.body.user;
  const salt = await bcrypt.genSalt(10);
  user.password = await bcrypt.hash(user.password, salt);
  
  let sql = 'INSERT INTO user SET ?';
  let userRoleObj = {};
    
  connection.query(sql, user, (error, results, fields) => {
    if (error) throw error;
    userRoleObj.user_id = results.insertId;
    userRoleObj.role = user.type;
    
    let sql2 = 'INSERT INTO user_role SET ?';
    
    connection.query(sql2, userRoleObj, (error, results, fields) => {
      if (error) throw error;
      res.json(results);
    });
  });
  
});

app.patch('/api/user/:id', (req, res) => {
  console.log('UPDATE user request initiated!', req.params.id);
  let sql = 'UPDATE user SET ? WHERE user_id = ?';
  
  connection.query(sql, [req.body.user, req.params.id], (error, results, fields) => {
    if (error) throw error;
    res.json(results);
  });

});

app.delete('/api/user/:id', (req, res) => {
  console.log('DELETE user request initiated!', req.params.id);
  let sql = 'DELETE FROM user WHERE user_id = ?';
  let value = [req.params.id];
  connection.query(sql, value, (error, results, fields) => {
    if (error) throw error;
    
    let sql = 'DELETE FROM user_role WHERE user_id = ?';
    connection.query(sql, value, (error, results, fields) => {
      if (error) throw error;
      res.json(results);
    });
    
  });
});

app.get('/', (req, res) => {
  res.send('users microservice initiated!'); 
  // Uncomment line below when deployed to production
  //res.sendFile(process.cwd()+"/github-users-list/dist/github-users-list/index.html");
});

app.listen(port, () => {
  console.log(`Server listening on the port::${port}`);
});
