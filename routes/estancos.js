var express = require("express");
var router = express.Router();

var db = require("../config/DB");
var connection = null;
db.main().then((con) => {
  connection = con;
});

router.get("/", async function (req, res, next) {
  try {
    const [rows, fields] = await connection.execute("select * from estanco");
    res.json(rows);
  } catch (e) {
    console.log(e);
    res.json(e);
  }
});

router.get("/:id", async function (req, res, next) {
  try {
    const id = req.params.id;
    const [rows, fields] = await connection.execute(
      "select * from estanco where id_estanco = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (e) {
    console.log(e);
    res.json(e);
  }
});

module.exports = router;
