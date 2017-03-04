var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      res.send('hello, there');

    }, // a function which handles a get request for all messages
    post: function (req, res) {
      console.log('================', req.body);
      models.messages.post(req.body);
      res.status(201).json({a: 1});
    } // a function which handles posting a message to the database

  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {
      console.log('------------------>>>>>', req.body);
      res.status(201).json({a: 1});
    }
  }
};

