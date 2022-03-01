<?php
declare(strict_types=1);

namespace CMP\Framework\Routing;

use CMP\Framework\Util\WrappedAssociativeArray;

class RouteResult {
	public const JSON = 'JSON';
	public const TEXT = 'TEXT';

	public function __construct(
		private WrappedAssociativeArray|string $body,
		private WrappedAssociativeArray $headers,
		private string $type
	) {
	}
}
