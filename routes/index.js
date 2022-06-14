var express = require('express');
var router = express.Router();

const passport = require('passport');
const jwt = require('jsonwebtoken');

var db = require ("../config/DB");
var connection = null;
db.main().then(con => { connection = con});

/* GET home page. */
router.post('/usuario/registro', async function(req, res, next) {
  const { nombre, direccion, usuario, contrasena } = req.body;
  const [rows, fields] = await connection.execute('insert into cliente(nombre_cliente, email, contrasena, direccion_cliente) values(?,?,?,?)', [nombre, usuario, contrasena, direccion]);
  res.json(rows);
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

router.post('/', function(req, res, next) {
  res.json({ title: 'Expo' });
});
router.put('/', function(req, res, next) {
  res.json({ title: 'Expre' });
});
router.delete('/', function(req, res, next) {
  res.json({ title: 'Este' });
});
module.exports = router;
