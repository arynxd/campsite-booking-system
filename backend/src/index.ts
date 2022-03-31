import Fastify from 'fastify'

const fastify = Fastify({
	logger: true,
})

fastify.register(import('./route/base'), { prefix: '/api' })
fastify.register(import('./route/user'), { prefix: '/api/user' })
fastify.register(import('./route/booking'), { prefix: '/api/booking' })

fastify.listen(3000, (err, address) => {
	if (err) {
		fastify.log.error(err)
		process.exit(1)
	}
})

fastify.log.info('App launched!')
