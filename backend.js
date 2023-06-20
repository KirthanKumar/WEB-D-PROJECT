const express = require('express');
const mysql = require('mysql');
var cors = require('cors');
const app = express();
const port = 3000;
app.use(express.urlencoded({ extended: false }));
app.use(cors());

// endpoints 
app.post('/login', function (req, res) {// verification of login details
    let p = req.body.password;
    let sql = "SELECT * FROM login where username =? and email=?";
    connection.query(sql, [req.body.username,req.body.email], function (err, result, fields) {
        if (err) res.send(err);
        console.log(result);
        if (result.length === 0) {
            res.send("user not found");
            return;
        }
        let password = result[0].password;
        if (password === p) {
            res.send("login success");
        } else
            res.send('INCORRECT PASSWORD');
    });
});
app.post('/sign_up', function (req, res) {// registration of user 
    console.log(req.body);
    const values = [[req.body.username, req.body.email, req.body.password]];
    const sql = "insert into login(username, email, password) values ?";
    connection.query(sql, [values], function (err) {
        if (err) {
            res.send('login failed');
        }
    });
    res.send("registered successful");
});

// mysql setup
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    database: 'WEB_D_project',
    user: 'root',
    password: 'sagar'//ur password for mysql connection
});

connection.connect(function (err) {
    if (err) {
        console.log("error occurred while connecting");
    }
    else {
        console.log("connection created with Mysql successfully");
    }
    connection.query("SELECT * FROM login", function (err, result, fields) {
        if (err) console.log(err);
        console.log(result);
    });
});

// server configuration
app.listen(port, () => {
    console.log(`successfully started server on port ${port}`);
});