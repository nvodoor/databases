var db = require('../db');

module.exports = {
  messages: {
    get: function () {
      

    }, // a function which produces all the messages
    post: function (data) {
      //db.connection.query('INSERT INTO users (username) VALUES (?)', ['Fred'], function(err, result) {
      console.log('hello..............', data);
      db.connection.query('INSERT INTO messages (message) VALUES (?)', [data.message], function(err, result) {
        if (err) {
          throw err;
        } else {
          console.log('hello..............', data);
        }
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

