var Promise = require('bluebird');
var amqp = require('amqp');

module.exports = function AmqpListener(handleMessage, config) {
	var connection;
	var connected;

	console.log('Initialising Rabbit MQ listener');

	function connectionReady(resolve, reject, connection) {
		if(connected) { 
			return;
		}

		connected = true;
		console.log('Connected to Rabbit MQ');
		console.log('Connecting to Queue to Rabbit MQ', { queue: config.queue });

		connection.queue(config.queue, { autoDelete: false }, queueReady.bind(undefined, resolve));
	}

	function queueReady(resolve, queue) {
		console.log('Connected to Queue');
		console.log('Binding Queue to exchange.', { exchange: config.exchange, routingKey: config.routing });
		queue.bind(config.exchange, config.routing);
		
		queue.subscribe({ ack: true }, messageReceived.bind(undefined, queue));

		console.log('Queue connected and bound.');

		resolve();
	}

	function messageReceived(queue, msg) {
		if(!msg.data) {
			console.log('no data in message');
			return queue.shift();
		}

		//console.log(new Date(), 'Message received');

		handleMessage(JSON.parse(msg.data.toString('utf-8')));
		queue.shift();
	}

	function startUp(eventEmitter, resolve, reject) {
		var options = { host: config.host };

		if(config.port) {
			options.port = config.port;
		}

		var connection = amqp.createConnection(options);

		console.log('Connecting to Rabbit MQ', options);

		connection.on('ready', connectionReady.bind(undefined, resolve, reject, connection));

		connection.on('error', function(e) {
			console.log('Error connecting to RabbitMQ', { message: e.message });
		});

		connection.on('end', function() {
			console.log('Rabbit MQ connection lost');
		});
	}

	function start(eventEmitter) {
		return new Promise(startUp.bind(undefined, eventEmitter));
	}

	return {
		start: start
	};
};