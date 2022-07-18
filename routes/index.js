var express = require('express');
var router = express.Router();

const passport = require('passport');
const jwt = require('jsonwebtoken');

var db = require ("../config/DB");
var connection = null;
db.main().then(con => { connection = con});

/* GET home page. */
router.post('/usuario/registro', async function(req, res, next) {
  try {
    const { nombre, direccion, usuario, contrasena } = req.body;
    const [rows, fields] = await connection.execute('insert into cliente(nombre_cliente, email, contrasena, direccion_cliente) values(?,?,?,?)', [nombre, usuario, contrasena, direccion]);
    res.json(rows);
  } catch (e) {
    console.log(e);
    res.json(e)
  }
});

router.post('/login', async (req, res, next) => {
    passport.authenticate(
      'login',
      async (err, user, info) => {
        try {
          if (err || !user) {
            const error = new Error('An error occurred.');
            return next(error);
          }

          req.login(
            user,
            { session: false },
            async (error) => {
              if (error) return next(error);

              const body = { _id: user.id_cliente, email: user.email };
              const token = jwt.sign({ user: body }, 'TOP_SECRET');

              return res.json({ token });
            }
          );
        } catch (error) {
          return next(error);
        }
      }
    )(req, res, next);
  }
);
module.exports = router;
