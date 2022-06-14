const mysql = require('mysql2/promise');

module.exports.main = async () => {
    const connection = await mysql.createConnection({
        user: "contreras", // process.env.USER,
        password: "0123456789", // process.env.PASS,
        database: "amaneciendo" // process.env.DATABASE
    });

    return connection
}
