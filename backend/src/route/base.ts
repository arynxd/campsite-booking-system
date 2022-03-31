import { FastifyPluginCallback } from 'fastify'

const plugin: FastifyPluginCallback = (fastify, opts, done) => {
	fastify.get('/', (req, res) => {
		res.send({ hello: 'world' })
	})

	done()
}

export default plugin
