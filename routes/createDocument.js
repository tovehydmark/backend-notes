var express = require('express');
var router = express.Router();

const cors = require('cors')
router.use(cors())

// Post a new document //
router.post("/", function (req, res) {

  req.app.locals.con.connect(function (err) {
    if (err) {
      console.log(err);
    }

    let saveDocumentTitle = req.body.documentTitle;
    let saveDocumentText = req.body.documentText;
    let saveAuthor = req.body.author;


    let sql = `INSERT INTO notes(documentTitle, documentText, author) VALUES("${saveDocumentTitle}", "${saveDocumentText}", "${saveAuthor}")`

    req.app.locals.con.query(sql, function (err, result) {

      if (err) {
        console.log(err);
      }
      console.log("Result: ", result);

    })

  })

  res.send("document created")
})

module.exports = router;