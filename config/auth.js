const passport = require('passport');
const localStrategy = require('passport-local').Strategy;
var db = require ("./DB");
var connection = null;
db.main().then(con => { connection = con});

passport.use(
    'login',
    new localStrategy({
        usernameField: 'email',
        passwordField: 'password'
      },
      async (email, password, done) => {
        try {
            const [rows, fields] = await connection.execute('SELECT * FROM cliente WHERE email =? and contrasena = ?', [email, password]);
            if (!rows.length > 0) return done(null, false, { message: 'User not found' });
            return done(null, rows[0], { message: 'Logged in Successfully' });
        } catch (error) {
            console.log(error);
            return done(error);
        }
      }
    )
);