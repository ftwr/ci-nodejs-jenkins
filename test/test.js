var request = require('supertest');
var app = require('../index.js');
describe('GET /testim', function() {
 it('respond with hello world', function(done) {
 //navigate to root and check the the response is "hello world"
 request(app).get('/testim').expect('hello world', done);
 });
});
