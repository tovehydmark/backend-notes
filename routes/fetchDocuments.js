var express = require("express");
var router = express.Router();

const cors = require("cors");
router.use(cors());

// Get documents from database

router.get("/", function (req, res) {
    req.app.locals.con.connect(function (err) {
        if (err) {
            console.log(err);
        }

        let sql = `SELECT * FROM notes`;
        req.app.locals.con.query(sql, function (err, result) {
            if (err) {
                console.log(err);
            }

            console.log(result);
            res.json(result);
        });
    });
});


// Update document in database

router.put("/", function (req, res) {

    req.app.locals.con.connect(function (err) {

        if (err) {
            console.log(err);
        }
        let sql = `UPDATE notes SET documentText="${req.body.documentText}" WHERE documentId=${req.body.id}`

        req.app.locals.con.query(sql, function (err, result) {
            if (err) {
                console.log(err);
            }

            console.log(result);
            res.json(result)
        })
    })
})


module.exports = router;