import { FastifyPluginCallback } from 'fastify'

const plugin: FastifyPluginCallback = (fastify, opts, done) => {
	fastify.get('/', (req, res) => {
		res.send({ user: true })
	})
	done()
}

export default plugin
