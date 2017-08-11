<?php

$app['debug'] = true;
$app['mongodb.client.uri'] = "mongodb://docker.for.mac.localhost:27017";
$app['mongodb.client.uriOptions'] = [];
$app['mongodb.client.driverOptions'] = [];
$app['twig.cache_dir'] = sys_get_temp_dir() . '/mongoqp-cache';
