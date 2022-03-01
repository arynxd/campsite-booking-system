<?php

namespace CMP\Framework\Impl;

use CMP\Framework\Http\Request;
use CMP\Framework\Http\Response;
use CMP\Framework\Routing\Route;
use CMP\Framework\Routing\RouteResult;

class BaseRoute extends Route {
	public function handle(Request $request, Response $response): RouteResult {
		return $response->json('{}');
	}
}
