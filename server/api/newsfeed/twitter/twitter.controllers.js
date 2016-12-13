const rp = require('request-promise');

const rfcKey = encodeURI(process.env.TWITTER_CONSUMER_KEY);
const rfcSecret = encodeURI(process.env.TWITTER_CONSUMER_SECRET);
const base64btc = Buffer.from(rfcKey + ':' + rfcSecret).toString('base64');

let authOptions = {
  method: 'POST',
  uri: 'https://api.twitter.com/oauth2/token',
  headers: {
    'Authorization': 'Basic ' + base64btc,
    'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8'
  },
  body: 'grant_type=client_credentials'
};

const queryTwitter = (req, res) => {
  console.log('Here are our authoptions', authOptions);
  console.log('Here is our querystring', req.query.querystring);
  let searchOptions = {
    uri: 'https://api.twitter.com/1.1/search/tweets.json',
    qs: {
      'q': req.query.querystring,
      'result_type': 'popular'
    },
    headers: {
      'Authorization': 'Bearer ' 
    },
    json: true
  };

  rp(authOptions)
    .then(function(authorization) {
      let tokenResponse = JSON.parse(authorization);
      let accessToken = tokenResponse.access_token;
      searchOptions.headers.Authorization += accessToken;
      console.log('Retrieved authorization token', accessToken);
      console.log('Added access token to search request', searchOptions.headers.Authorization);
      console.log('This is the search object', searchOptions);
      return rp(searchOptions)
    })
    .then(function(returnedTweets) {
      console.log(returnedTweets);
      res.json(returnedTweets);
    })
    .catch(function(error) {
      console.log('Error retrieving tweets');
      res.json(error);
    });
};

module.exports = {
  queryTwitter: queryTwitter
};