# [awesome-ci](https://github.com/cytopia/awesome-ci)

[![Build Status](https://travis-ci.org/cytopia/awesome-ci.svg?branch=master)](https://travis-ci.org/cytopia/awesome-ci)
[![Latest Stable Version](https://poser.pugx.org/cytopia/awesome-ci/v/stable)](https://packagist.org/packages/cytopia/awesome-ci)
[![Total Downloads](https://poser.pugx.org/cytopia/awesome-ci/downloads)](https://packagist.org/packages/cytopia/awesome-ci)
[![Docker image](https://images.microbadger.com/badges/image/cytopia/awesome-ci.svg)](https://hub.docker.com/r/cytopia/awesome-ci)
[![License](https://poser.pugx.org/cytopia/awesome-ci/license)](http://opensource.org/licenses/MIT)

> #### All [#awesome-ci](https://github.com/topics/awesome-ci) Docker images
>
> [ansible](https://github.com/cytopia/docker-ansible) **•**
> [ansible-lint](https://github.com/cytopia/docker-ansible-lint) **•**
> [awesome-ci](https://github.com/cytopia/awesome-ci) **•**
> [black](https://github.com/cytopia/docker-black) **•**
> [checkmake](https://github.com/cytopia/docker-checkmake) **•**
> [eslint](https://github.com/cytopia/docker-eslint) **•**
> [file-lint](https://github.com/cytopia/docker-file-lint) **•**
> [gofmt](https://github.com/cytopia/docker-gofmt) **•**
> [golint](https://github.com/cytopia/docker-golint) **•**
> [jsonlint](https://github.com/cytopia/docker-jsonlint) **•**
> [phpcs](https://github.com/cytopia/docker-phpcs) **•**
> [pycodestyle](https://github.com/cytopia/docker-pycodestyle) **•**
> [pylint](https://github.com/cytopia/docker-pylint) **•**
> [terraform-docs](https://github.com/cytopia/docker-terraform-docs) **•**
> [terragrunt](https://github.com/cytopia/docker-terragrunt) **•**
> [yamllint](https://github.com/cytopia/docker-yamllint)


> #### All [#awesome-ci](https://github.com/topics/awesome-ci) Makefiles
>
> Visit **[cytopia/makefiles](https://github.com/cytopia/makefiles)** for seamless project integration, minimum required best-practice code linting and CI.

[![Docker image](http://dockeri.co/image/cytopia/awesome-ci?&kill_cache=1)](https://hub.docker.com/r/cytopia/awesome-ci)

**Runs on**

[![Linux](https://raw.githubusercontent.com/cytopia/icons/master/64x64/linux.png)](https://www.kernel.org/)
[![FreeBSD](https://raw.githubusercontent.com/cytopia/icons/master/64x64/freebsd.png)](https://www.freebsd.org)
[![OSX](https://raw.githubusercontent.com/cytopia/icons/master/64x64/osx.png)](https://www.apple.com/osx)

Continuous Integration command line tools for git repositories, file characteristics, syntax errors
and static source code analysis.

Awesome-CI is capable of finding various problems in your code repository as well as fixing them
automatically.


---

**Table of Contents**

1. [Tools](#tools)
2. [Learn / Validate](#learn--validate)
3. [Fix](#fix)
4. [Custom regex contributions](#custom-regex-contributions)
5. [General usage](#general-usage)
6. [Installation](i#installation)
    1. [Requirements](#requirements)
    2. [Install OSX](#install-osx)
    3. [Install Linux/BSD](#install-linuxbsd)
7. [Awesome CI Docker image](#awesome-ci-docker-image)
8. [Documentation](#documentation)
9. [License](#license)


## Tools

All checks have the option to only check by one or more file **extensions**, by **shebang** as well as to **exclude** one or more folders from the whole search.

**Note:** Fixable options are currently in testing phase. Please report any bugs.


| Type | Tool | Fixable | Description |
|------|------|---------|-------------|
| Git | [git-conflicts](bin/git-conflicts) | | Scan files and check if they contain git conflicts. |
| Git | [git-ignored](bin/git-ignored) | | Scan git directory and see if ignored files are still in git cache. |
| File | [file-cr](bin/file-cr) | ✓ | Scan files and check if they contain CR (Carriage Return only). |
| File | [file-crlf](bin/file-crlf) | ✓ | Scan files and check if they contain CRLF (Windows Line Feeds). |
| File | [file-empty](bin/file-empty) | | Scan files and check if they are empty (0 bytes). |
| File | [file-nullbyte-char](bin/file-nullbyte-char) | ✓ | Scan files and check if they contain a null-byte character (\x00). |
| File | [file-trailing-newline](bin/file-trailing-newline) | ✓ | Scan files and check if they contain a trailing newline. |
| File | [file-trailing-single-newline](bin/file-trailing-single-newline) | ✓ | Scan files and check if they contain exactly one trailing newline. |
| File | [file-trailing-space](bin/file-trailing-space) | ✓ | Scan files and check if they contain trailing whitespaces. |
| File | [file-utf8](bin/file-utf8) | ✓ | Scan files and check if they have a non UTF-8 encoding. |
| File | [file-utf8-bom](bin/file-utf8-bom) | ✓ | Scan files and check if they contain BOM (Byte Order Mark): `<U+FEFF>`. |
| Syntax | [syntax-bash](bin/syntax-bash) | | Scan shell files for bash syntax errors. |
| Syntax | [syntax-css](bin/syntax-css) | | Scan CSS files for CSS syntax errors. |
| Syntax | [syntax-js](bin/syntax-js) | | Scan JS files for JS syntax errors. |
| Syntax | [syntax-json](bin/syntax-json) | | Scan files for JSON syntax errors. |
| Syntax | [syntax-markdown](bin/syntax-markdown) | | Scan files for Markdown syntax errors. |
| Syntax | [syntax-perl](bin/syntax-perl) | | Scan Perl files for Perl syntax errors. |
| Syntax | [syntax-php](bin/syntax-php) | | Scan files for PHP syntax errors. |
| Syntax | [syntax-python](bin/syntax-python) | | Scan Python files for Python syntax errors. |
| Syntax | [syntax-ruby](bin/syntax-ruby) | | Scan Ruby files for Ruby syntax errors. |
| Syntax | [syntax-scss](bin/syntax-scss) | | Scan SCSS files for SCSS syntax errors. |
| Syntax | [syntax-sh](bin/syntax-sh) | | Scan shell files for /bin/sh syntax errors. |
| Code Conventions | [inline-css](bin/inline-css) | | Scan files and check if they contain inline css code. |
| Code Conventions | [inline-js](bin/inline-js) | | Scan files and check if they contain inline javascript code. |
| Regex | [regex-grep](bin/regex-grep) | | `egrep` (`grep -E`) regex version to scan files for an occurance. |
| Regex | [regex-perl](bin/regex-perl) | | `perl` regex version to scan files for an occurance. |


## Learn / validate

All of the above scripts offer the `--dry` option which will only show you the built command without actually executing it:
```bash
$ regex-grep --path=. --ignore=".git,.svn" --shebang=sh --size --text \
--custom="if[[:space:]]*\[\[" --dry

find . -type f -not \( -path "./.git*" -o -path "./.svn*" \) ! -size 0 -print0 | \
   xargs -0 -P 8 -n1 grep -Il '' | \
   tr '\n' '\0' | \
   xargs -0 -P 8 -n1 awk '/^#!.*(\/sh|[[:space:]]+sh)/{print FILENAME}' | \
   tr '\n' '\0' | \
   xargs -0 -P 8 -n1  sh -c 'if [ -f "${1}" ]; then grep --color=always -inHE "if[[:space:]]*\[\[" "$1" || true; fi' --
```


## Fix

Some of the above scripts offer the `--fix` option (see table above), with which you are actually able to fix the problem.
You can also combine it with `--dry` to see how the actual fix command looks like:
```bash
$ file-utf8 --path=dump.sql --fix --dry

find dump.sql -type f -print0 | \
   xargs -0 -P 8 -n1  sh -c 'if [ -f "${1}" ]; then isutf8 "$1" >/dev/null || (TERM=vt100 vi -u NONE -n -es -c "set fileencoding=utf8" -c "wq" "$1" > /dev/tty && echo "Fixing: $1" || echo "FAILED: $1"); fi' --
```


## Custom regex contributions

`regex-grep` and `regex-perl` have a lot of potential for doing custom project validation.

In order to give you an idea, have a look at the compiled [Regex Contributions](REGEX_CONTRIBUTIONS.md).

Please use pull requests to add useful checks.


## General Usage

* All tools share the same pattern (except `git-ignored`) and can be used with the same command line arguments.
* Some tools have an additional option `--custom=""` to overwrite the command itself (this is explained and shown in detail in each command's `--help` option).

**Options:**

```bash
# Required:
  --path            # Specify the path where to scan

# Optional pattern (each option is logically and-ed):
  --fix             # Fix the problems for the specified files (not every check)

  --text            # Only scan non-binary files
  --size            # Only scan non-empty files (greater 0 bytes)
  --shebang         # Only scan files (shell scripts) that match a certain shebang
  --extension       # Only scan files with these file extensions
  --ignore          # Ignore files/folders

# Optional misc:
  --config          # Specify configuration file
  --confpre         # Alter configuration directive prefix for this check
  --verbose         # Show files and commands as being processed
  --debug           # Show additional debug messages
  --list            # Only show files that would be processed (no processing)
  --dry             # Show command that would be executed (no processing)

# System
  --help            # Show help
  --info            # Show version of required binaries
  --version         # Show tool version
```

## Installation

### Requirements

Awesome-ci requires the following tools to be installed:

* `dos2unix`
* `eslint`
* `file`
* `git`
* `jsonlint`
* `mdl`
* `perl`
* `php`
* `python`
* `ruby`
* `scss_lint`
* `shellcheck`

### Install OSX

```bash
brew tap cytopia/tap
brew install awesome-ci
```

### Install Linux/BSD

```bash
# Install to /usr/bin
./configure
make install

# Instal to /usr/local/bin
./configure --prefix=/usr/local
make install

# Install to /opt/bin
./configure --prefix=/opt
make install
```

## Awesome CI Docker image

[![Docker image](http://dockeri.co/image/cytopia/awesome-ci?&kill_cache=1)](https://hub.docker.com/r/cytopia/awesome-ci)

Instead of installing awesome-ci and all its required dependencies locally on your computer,
you can also use the bundled Docker image 
**[cytopia/awesome-ci](https://hub.docker.com/r/cytopia/awesome-ci/)** which has everything
pre-installed and is built nightly by travis-ci.

```bash
docker run -v ${PWD}:/ac cytopia/awesome-ci file-crlf --path=/ac
```

The above example is using `file-crlf` to scan the current directory for files containing
Windows newlines:

* `${PWD}` (the current host directory) is mounted into the container's `/ac` directoy
* `file-crlf` path then points (inside the container) to `/ac` (which is the current host directory)
* `/ac` can actually be named by whatever name you want

If you use an awesome-ci configuration which is not inside the directory you want to check, you
will also have to mount that into the container:
```bash
docker run \
    -v /host/path/to/awesome-ci.conf:/etc/awesome-ci.conf \
    -v ${PWD}:/ac cytopia/awesome-ci file-crlf --path=/ac --config=/etc/awesome-ci.conf
```

## Documentation

To find out more about awesome-ci, have a look at the following links.

* [Dependencies](dependencies/)
* [Examples](EXAMPLES.md)
* [Regex Contributions](REGEX_CONTRIBUTIONS.md)

## Dockerfile linter

* Information about [dockerfile-linter](https://github.com/buddy-works/dockerfile-linter) in Buddy

## License

[MIT License](LICENSE.md)

Copyright (c) 2018 [cytopia](https://github.com/cytopia)
