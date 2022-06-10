var express = require("express");
var router = express.Router();

const cors = require("cors");
router.use(cors());

// Get admin login data from database

router.post("/", function (req, res) {

    req.app.locals.con.connect(function (err) {
        if (err) {
            console.log(err);
        }

        let sql = `SELECT * FROM login`;
        req.app.locals.con.query(sql, function (err, result) {
            if (err) {
                console.log(err);
            }

            // Compares req.body data with the result data from the database to see if the username and password is correct
            for (let i = 0; i < result.length; i++) {

                if (result[i].userName === req.body.userName && result[i].password === req.body.password) {
                    res.json({
                        status: "200",
                        userId: result[i].userId
                    })
                } else {
                    res.json("Fel användarnamn eller lösen")
                }
            }

        });
    });
});

// Post to admin to create admin details
// (Only did once as to create the login account)

// router.post("/", function (req, res) {
//     req.app.locals.con.connect(function (err) {
//         if (err) {
//             console.log(err);
//         }

//         let sql = `INSERT INTO login (userName, password) VALUES ("${req.body.userName}", "${req.body.password}")`;
//         req.app.locals.con.query(sql, function (err, result) {
//             if (err) {
//                 console.log(err);
//             }

//             res.json(result);
//         });
//     });
// });

module.exports = router;