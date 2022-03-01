<?php
declare(strict_types=1);

namespace CMP\Framework\Http;

use CMP\Framework\Routing\RouteResult;
use CMP\Framework\Util\WrappedAssociativeArray;

class Response {
	private WrappedAssociativeArray $headers;

	public function __construct() {
		$this->headers = new WrappedAssociativeArray();
	}

	public function json(WrappedAssociativeArray|string $data): RouteResult {
		return new RouteResult($data, $this->headers, 'JSON');
	}
}
