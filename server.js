	// set up ========================
	var express  = require('express');
	var app      = express(); 								// create our app w/ express
	var morgan = require('morgan'); 			// log requests to the console (express4)
	var bodyParser = require('body-parser'); 	// pull information from HTML POST (express4)
	var methodOverride = require('method-override'); // simulate DELETE and PUT (express4)
	var argv = require('optimist').argv;

	// configuration =================

//    	app.use('/js', express.static(__dirname + '/js'));

	app.use(morgan('dev')); 										// log every request to the console
	app.use(bodyParser.urlencoded({'extended':'true'})); 			// parse application/x-www-form-urlencoded
	app.use(bodyParser.json()); 									// parse application/json
	app.use(bodyParser.json({ type: 'application/vnd.api+json' })); // parse application/vnd.api+json as json
	app.use(methodOverride());

	// routes ======================================================================

	// api ---------------------------------------------------------------------


	// application -------------------------------------------------------------
	app.get('/', function(req, res) {
		res.sendfile('index.html'); // cargo la index
	});

	app.get('/downloads', function(req, res){
  		var file = __dirname + '/GDGNodeBoilerPlate.zip';
  		res.download(file); // Envio el file
	});
	app.use(express.static(path.join(__dirname, 'public')));

	app.use('/styles', express.static(__dirname + '/styles'));
	app.use('/scripts', express.static(__dirname + '/scripts'));
	app.use('/images', express.static(__dirname + '/images'));
	app.use('/fonts', express.static(__dirname + '/fonts'));

	// listen (start app with node server.js) ======================================
	app.listen(8080, argv.fe_ip);
	console.log("App listening on port 8080");

