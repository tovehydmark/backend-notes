var express = require("express");
var router = express.Router();

const cors = require("cors");
router.use(cors());

// Delete document in database
router.delete("/", function (req, res) {
    let documentId = req.body.thisDocumentId;

    req.app.locals.con.connect(function (err) {
        if (err) {
            console.log(err);
        }
        let sql = `DELETE FROM notes WHERE documentId=${Number(documentId)}`;

        req.app.locals.con.query(sql, function (err, result) {
            if (err) {
                console.log(err);
            }

            res.json(result);
        });
    });
});

module.exports = router;