#!/bin/bash

set_php_version () {
	sudo rm -f /usr/local/bin/php

	sudo ln -s $1/php /usr/local/bin/php
}

PHP_56=/usr/local/opt/php@5.6/bin
PHP_71=/usr/local/opt/php@7.1/bin
PHP_73=/usr/local/opt/php@7.3/bin
PHP_74=/usr/local/opt/php@7.4/bin
PHP_80=/usr/local/opt/php@8.0/bin

if [ "$1" == "" ]; then
	echo "p <version>"
	exit 1
fi

if [ "$1" == "5.6" ]; then
	set_php_version $PHP_56
fi
if [ "$1" == "7.1" ]; then
	set_php_version $PHP_71
fi
if [ "$1" == "7.3" ]; then
	set_php_version $PHP_73
fi
if [ "$1" == "7.4" ]; then
	set_php_version $PHP_74
fi
if [ "$1" == "8.0" ]; then
	set_php_version $PHP_80
fi
