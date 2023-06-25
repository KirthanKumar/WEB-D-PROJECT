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
    connection.query(sql, [req.body.username, req.body.email], function (err, result, fields) {
        if (err){console.log(err); res.send(err);}
        console.log(result);
        if (result.length === 0) {
            res.send("user not found");
            return;
        }
        let password = result[0].password;
        if (password === p) {
            let success = {
                msg: "login successful",
                username: result[0].username,
                email: result[0].email
            }
            res.send(success);
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
            console.log(err);
            res.send('login failed');
        }
    });
    res.send("registered successful");
});
app.get('/list', (req, res) => {// onloading listofproducts html page 
    const type = req.query.type;
    connection.query("SELECT products_id,price,imgurl1,title FROM products where product_type=?", [type], function (err, result, fields) {
        if (err) {
            console.log(err); 
            res.send(err);
        }else{
            res.send(result);
        }
    });
});
app.get('/product', (req, res) => {// onloading product html page 
    const id = req.query.id;
    connection.query("SELECT * FROM products where products_id=?", [id], function (err, result, fields) {
        if (err) { console.log(err); res.send(err); }
        else res.send(result);
    });
});
app.get('/cart', (req, res) => {// onloading cart html page, user logged in check in frontend
    const username = req.query.username;
    const email = req.query.email;
    connection.query("SELECT distinct * FROM cart,products where product_id=products_id and username=? and email=?", [username, email], function (err, result, fields) {
        if (err) {
            console.log(err);
            res.send(err);
        }
        else {
            res.send(result);
        }
    });
});
app.post('/addtocart', (req, res) => {
    const name = req.body.username;
    const email = req.body.email;
    const id = req.body.id;
    const values = [[name, email, id]];
    console.log(values);
    const sql = "insert into cart values ?";
    connection.query(sql, [values], function (err) {
        if (err) {
            console.log(err);
            res.send('failed to insert');
            return;
        } else
            res.send("added successfully");
    });
});
app.delete("/deletecart", (req, res) => {
    console.log("deleted successfully");
    const id = req.query.id;
    const sql = "delete from cart where product_id =?";
    connection.query(sql, [id], function (err) {
        if (err) {
            console.log(err);
            res.send('failed to delete');
            return;
        } else
            res.send("delete successfully");
    });
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