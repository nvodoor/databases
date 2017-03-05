var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      var queryStr = 'select messages.id, messages.message, messages.roomname, users.username \
                      from messages left outer join users on (messages.user_id = users.id) \
                      order by messages.id desc ';
      db.connection.query(queryStr, function (err, result) {
        callback(err, result);
      });
      

    }, // a function which produces all the messages
    post: function (params, callback) {
      var queryStr = 'insert into messages (user_id, message, roomname) value ((select id from users where username = ? limit 1), ?, ?)';
      db.connection.query(queryStr, params, function(err, result) {
        callback(err, result);

      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (callback) {
      var queryStr = 'select * from users';
      db.connection.query(queryStr, (err, result) => {
        callback(err, result);
      });
    },
    post: function (params, callback) {
      console.log('insert into users table  .............');
      var queryStr = 'insert into users (username) value (?)';
      db.connection.query(queryStr, params, (err, result) => {
        callback(err, result);
      });

    }
  }
};

