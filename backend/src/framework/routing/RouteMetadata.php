<?php

namespace CMP\Framework\Routing;

use CMP\Framework\Util\WrappedAssociativeArray;

class RouteMetadata {
	public function __construct(
		private string $path,
		private WrappedAssociativeArray $methods
	) {
	}

	public function path(): string {
		return $this->path;
	}

	public function methods(): WrappedAssociativeArray {
		return $this->methods;
	}
}
