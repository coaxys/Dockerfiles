module.exports = {
	host_url: "http://localhost:6284",		// mounted on this url
	base: "/",								// add a base url path. e.g: "/auth"
	port: 6284,

	debug: false,							// add stack trace & infos in errors

	/* uncomment to use ssl
	ssl: {
		key: '/path/to/key',
		certificate: '/path/to/crt'
	},
	*/

	staticsalt: 'i m a random string, change me.',
	publicsalt: 'i m another random string, change me.',

	redis: {
		port: REDIS_PORT_6379_TCP_PORT,
		host: 'REDIS_PORT_6379_TCP_ADDR',
		password: 'REDIS_PASSWORD',
		// database: ...0~15...
		// options: {...other options...}
	},

	smtp: {}, // defaults to localhost:25, see nodemailer for further options

	plugins: [
		'server.statistics',
		'server.admin.auth',
		'server.admin',
		'server.request'
	]
}