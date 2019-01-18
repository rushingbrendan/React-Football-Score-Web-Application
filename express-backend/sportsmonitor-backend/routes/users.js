var express = require('express');
var router = express.Router();

var mysql = require('mysql')

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'Conestoga1',
  database : 'sportsMonitor',
  port     : 3306
});


/* connect to MySQL database */
connection.connect(function(err) {
  if (err) throw err
  console.log('You are now connected...')
})


/* GET users listing. */
router.get('/:season/:week', function(req, res, next) {

  /* Get URL details */
  var seasonInput = req.params.season;
  var weekInput = req.params.week;

  console.log("Season: " + seasonInput);
  console.log("Week: " + weekInput);


  /* Get data from MySQL database */
  //connection.query('CALL spWeekGetScoreData(50,2015)', function (err, rows, fields) {
    connection.query('CALL spWeekGetScoreData('+weekInput+','+seasonInput+');', function (err, rows, fields) {
    if (err) throw err
    console.log('The solution is: ', rows[0])

    /* Send data back to user requesting */
    res.send({data: rows});
  })



});

/* GET team name data */
router.get('/teamNames', function(req, res, next) {


  /* Get data from MySQL database */
  connection.query('SELECT cityName, cityAbbreviation FROM sportsMonitor.Team', function (err, rows, fields) {
    if (err) throw err
    console.log('The solution is: ', rows[0])

    /* Send data back to user requesting */
    res.send({teamData: rows});
  })



});



/* GET users listing. */
router.get('/2', function(req, res, next) {
	// Comment out this line:
  //res.send('respond with a resource');

  // And insert something like this instead:
  res.json(
    

    
    [{
    id: 1,
    week: "15",
    year: "2016-2017",
    awayTeamName: "Houston",
    awayTeamSpread: "-3.5",
    awayTeamScore: "14",
    homeTeamName: "New England",
    homeTeamScore: "31"
        
  }, 
  {
    id: 2,
    week: "15",
    year: "2016-2017",
    awayTeamName: "Green Bay",
    awayTeamSpread: "-7.5",
    awayTeamScore: "24",
    homeTeamName: "Jacksonville",
    homeTeamScore: "6"
  },

  {
    id: 3,
    week: "15",
    year: "2016-2017",
    awayTeamName: "Tennessee",
    awayTeamSpread: "-1.5",
    awayTeamScore: "24",
    homeTeamName: "Miami",
    homeTeamScore: "28"
  },

  {
    id: 4,
    week: "15",
    year: "2016-2017",
    awayTeamName: "New York (G)",
    awayTeamSpread: "-4.5",
    awayTeamScore: "21",
    homeTeamName: "Tampa Bay",
    homeTeamScore: "3"
  },

  {
    id: 5,
    week: "15",
    year: "2016-2017",
    awayTeamName: "Buffalo",
    awayTeamSpread: "+4.5",
    awayTeamScore: "3",
    homeTeamName: "New Orleans",
    homeTeamScore: "31"
  }


]);
});


module.exports = router;