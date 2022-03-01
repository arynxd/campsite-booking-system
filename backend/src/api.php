<?php
declare(strict_types=1);
require 'autoloader.php';

use CMP\Framework\BackendSession;
use CMP\Polyfill\Polyfill;

Polyfill::apply();

$session = new BackendSession();

echo '{"message": "API is ONLINE!" }';
