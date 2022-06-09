var express = require('express');
var router = express.Router();

const cors = require("cors");
router.use(cors());


// Update document in database

router.delete("/", function (req, res) {

    //Req.body är ett tomt objekt???
    //Därför funkar inte delete
    console.log("REQBODY", req.body); //Blir undefined eftersom det är ett tomt objekt

    let documentId = (req.body.thisDocumentId)

    req.app.locals.con.connect(function (err) {


        if (err) {
            console.log(err);
        }
        let sql = `DELETE FROM notes WHERE documentId=${documentId}`

        req.app.locals.con.query(sql, function (err, result) {
            if (err) {
                console.log(err);
            }

            // console.log(result);
            res.json(result)
        })
    })
})



module.exports = router;