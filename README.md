# `p` – Interactively Manage Your PHP Versions

(Note: The idea for this is _heavily_ borrowed from [n](https://github.com/tj/n) which is a fantastic tool for managing NodeJS versions)

This is a very simple script for switching between PHP versions.

## Supported PHP Versions

- PHP 5.6
- PHP 7.1
- PHP 7.3
- PHP 7.4
- PHP 8.0

## System Requirements

- OSX (support for other platforms may come later)
- [Homebrew](https://brew.sh/)

## Setup

1. Download the script or clone this repository
1. Use Homebrew to install any/all of the PHP versions listed above

## Usage

`p <version>`

For example: `p 7.4` will switch the PHP cli to use PHP 7.4.

## How it Works

The script will delete the file `/usr/local/bin/php` (if it exists), then symlink the appropriate `php` binary to `/usr/local/bin/php`.

## Caveats

- Doesn't do anything to `pear` or `pecl`
- Requires the various PHP versions to already be installed
- Assumes OSX and Homebrew
