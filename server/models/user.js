const mongoose = require('mongoose');

const userSchema = mongoose.Schema({
  name: {
    required: true,
    type: String,
    trim: true,
  },
  email: {
    reuired: true,
    type: String,
    trim: true,
    validate: {
        validator: (value) => {
            const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return value.match(re);
        },
        message: 'Please enter a valid email address',
    },
  },
  password: {
    required: true,
    type: String,
    trim: true,
    validate: {
        validator: (value) => {
            const re = /^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&? "]).*$/;
            return value.match(re);
        },
        message: 'Please enter a password with at least one character and at least one number with length greater than 8',
    },
  },  
  address: {
    type: String,
    default: '',
  },
  type: {
    type: String,
    default: 'user',
  },

});

const User = mongoose.model('User', userSchema);
module.exports = User;