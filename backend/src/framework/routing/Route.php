<?php

namespace CMP\Framework\Routing;

use CMP\Framework\Http\Request;
use CMP\Framework\Http\Response;

abstract class Route
{
    protected function __construct(private RouteMetadata $meta)
    {
    }

    public function meta(): RouteMetadata
    {
        return $this->meta;
    }

    public abstract function handle(Request $request, Response $response): RouteResult;
}
