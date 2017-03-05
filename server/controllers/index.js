var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      models.messages.get(function(err, data) {
        if (err) {
          throw err;
        }
        res.json(data);
      });

    }, // a function which handles a get request for all messages
    post: function (req, res) {
      var params = [req.body.username, req.body.message, req.body.roomname];
      models.messages.post(params, function (err, data) {
        if (err) {
          throw err;
        } 
        res.sendStatus(201);
      });
    } // a function which handles posting a message to the database

  },

  users: {
    // Ditto as above
    get: function (req, res) {
      models.messages.get(function(err, data) {
        if (err) {
          throw err;
        }
        res.json(data);
      });

    },
    post: function (req, res) {
      var params = [req.body.username];
      models.users.post(params, function (err, data) {
        if (err) {
          throw err;
        }
        res.sendStatus(201);
      });
    }
  }
};

