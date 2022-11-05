# [awesome-ci](https://github.com/cytopia/awesome-ci)

[![Build Status](https://travis-ci.org/cytopia/awesome-ci.svg?branch=master)](https://travis-ci.org/cytopia/awesome-ci)
[![Latest Stable Version](https://poser.pugx.org/cytopia/awesome-ci/v/stable)](https://packagist.org/packages/cytopia/awesome-ci)
[![Total Downloads](https://poser.pugx.org/cytopia/awesome-ci/downloads)](https://packagist.org/packages/cytopia/awesome-ci)
[![Docker image](https://images.microbadger.com/badges/image/cytopia/awesome-ci.svg)](https://hub.docker.com/r/cytopia/awesome-ci)
[![License](https://poser.pugx.org/cytopia/awesome-ci/license)](http://opensource.org/licenses/MIT)


> ## :warning: DEPRECATION WARNING
>
> This repository is deprecated. Please use the following docker images below instead:
>
> #### All [#awesome-ci](https://github.com/topics/awesome-ci) Docker images
>
> [ansible-lint][alint-git-lnk] **•**
> [ansible][ansible-git-lnk] **•**
> [awesome-ci][aci-git-lnk] **•**
> [bandit][bandit-git-lnk] **•**
> [black][black-git-lnk] **•**
> [checkmake][cm-git-lnk] **•**
> [eslint][elint-git-lnk] **•**
> [file-lint][flint-git-lnk] **•**
> [gofmt][gfmt-git-lnk] **•**
> [goimports][gimp-git-lnk] **•**
> [golint][glint-git-lnk] **•**
> [jsonlint][jlint-git-lnk] **•**
> [kubeval][kubeval-git-lnk] **•**
> [linkcheck][linkcheck-git-lnk] **•**
> [mypy][mypy-git-lnk] **•**
> [php-cs-fixer][pcsf-git-lnk] **•**
> [phpcbf][pcbf-git-lnk] **•**
> [phpcs][pcs-git-lnk] **•**
> [phplint][plint-git-lnk] **•**
> [pycodestyle][pycs-git-lnk] **•**
> [pydocstyle][pyds-git-lnk] **•**
> [pylint][pylint-git-lnk] **•**
> [terraform-docs][tfdocs-git-lnk] **•**
> [terragrunt-fmt][tgfmt-git-lnk] **•**
> [terragrunt][tg-git-lnk] **•**
> [yamlfmt][yfmt-git-lnk] **•**
> [yamllint][ylint-git-lnk]
>
> #### Docker images
>
> Save yourself from installing lot's of dependencies and pick a dockerized version of your favourite
> linter below for reproducible local or remote CI tests:
>
> | GitHub | DockerHub | Type | Description |
> |--------|-----------|------|-------------|
> | [awesome-ci][aci-git-lnk]        | [![aci-hub-img]][aci-hub-lnk]         | Basic      | Tools for git, file and static source code analysis |
> | [file-lint][flint-git-lnk]       | [![flint-hub-img]][flint-hub-lnk]     | Basic      | Baisc source code analysis |
> | [linkcheck][linkcheck-git-lnk]   | [![linkcheck-hub-img]][flint-hub-lnk] | Basic      | Search for URLs in files and validate their HTTP status code |
> | [ansible][ansible-git-lnk]       | [![ansible-hub-img]][ansible-hub-lnk] | Ansible    | Multiple versions and flavours of Ansible |
> | [ansible-lint][alint-git-lnk]    | [![alint-hub-img]][alint-hub-lnk]     | Ansible    | Lint Ansible |
> | [gofmt][gfmt-git-lnk]            | [![gfmt-hub-img]][gfmt-hub-lnk]       | Go         | Format Go source code **<sup>[1]</sup>** |
> | [goimports][gimp-git-lnk]        | [![gimp-hub-img]][gimp-hub-lnk]       | Go         | Format Go source code **<sup>[1]</sup>** |
> | [golint][glint-git-lnk]          | [![glint-hub-img]][glint-hub-lnk]     | Go         | Lint Go code |
> | [eslint][elint-git-lnk]          | [![elint-hub-img]][elint-hub-lnk]     | Javascript | Lint Javascript code |
> | [jsonlint][jlint-git-lnk]        | [![jlint-hub-img]][jlint-hub-lnk]     | JSON       | Lint JSON files **<sup>[1]</sup>** |
> | [kubeval][kubeval-git-lnk]       | [![kubeval-hub-img]][kubeval-hub-lnk] | K8s        | Lint Kubernetes files |
> | [checkmake][cm-git-lnk]          | [![cm-hub-img]][cm-hub-lnk]           | Make       | Lint Makefiles |
> | [phpcbf][pcbf-git-lnk]           | [![pcbf-hub-img]][pcbf-hub-lnk]       | PHP        | PHP Code Beautifier and Fixer |
> | [phpcs][pcs-git-lnk]             | [![pcs-hub-img]][pcs-hub-lnk]         | PHP        | PHP Code Sniffer |
> | [phplint][plint-git-lnk]         | [![plint-hub-img]][plint-hub-lnk]     | PHP        | PHP Code Linter **<sup>[1]</sup>** |
> | [php-cs-fixer][pcsf-git-lnk]     | [![pcsf-hub-img]][pcsf-hub-lnk]       | PHP        | PHP Coding Standards Fixer |
> | [bandit][bandit-git-lnk]         | [![bandit-hub-img]][bandit-hub-lnk]   | Python     | A security linter from PyCQA
> | [black][black-git-lnk]           | [![black-hub-img]][black-hub-lnk]     | Python     | The uncompromising Python code formatter |
> | [mypy][mypy-git-lnk]             | [![mypy-hub-img]][mypy-hub-lnk]       | Python     | Static source code analysis |
> | [pycodestyle][pycs-git-lnk]      | [![pycs-hub-img]][pycs-hub-lnk]       | Python     | Python style guide checker |
> | [pydocstyle][pyds-git-lnk]       | [![pyds-hub-img]][pyds-hub-lnk]       | Python     | Python docstyle checker |
> | [pylint][pylint-git-lnk]         | [![pylint-hub-img]][pylint-hub-lnk]   | Python     | Python source code, bug and quality checker |
> | [terraform-docs][tfdocs-git-lnk] | [![tfdocs-hub-img]][tfdocs-hub-lnk]   | Terraform  | Terraform doc generator (TF 0.12 ready) **<sup>[1]</sup>** |
> | [terragrunt][tg-git-lnk]         | [![tg-hub-img]][tg-hub-lnk]           | Terraform  | Terragrunt and Terraform |
> | [terragrunt-fmt][tgfmt-git-lnk]  | [![tgfmt-hub-img]][tgfmt-hub-lnk]     | Terraform  | `terraform fmt` for Terragrunt files **<sup>[1]</sup>** |
> | [yamlfmt][yfmt-git-lnk]          | [![yfmt-hub-img]][yfmt-hub-lnk]       | Yaml       | Format Yaml files **<sup>[1]</sup>** |
> | [yamllint][ylint-git-lnk]        | [![ylint-hub-img]][ylint-hub-lnk]     | Yaml       | Lint Yaml files |

> **<sup>[1]</sup>** Uses a shell wrapper to add **enhanced functionality** not available by original project.

[aci-git-lnk]: https://github.com/cytopia/awesome-ci
[aci-hub-img]: https://img.shields.io/docker/pulls/cytopia/awesome-ci.svg
[aci-hub-lnk]: https://hub.docker.com/r/cytopia/awesome-ci

[flint-git-lnk]: https://github.com/cytopia/docker-file-lint
[flint-hub-img]: https://img.shields.io/docker/pulls/cytopia/file-lint.svg
[flint-hub-lnk]: https://hub.docker.com/r/cytopia/file-lint

[linkcheck-git-lnk]: https://github.com/cytopia/docker-linkcheck
[linkcheck-hub-img]: https://img.shields.io/docker/pulls/cytopia/linkcheck.svg
[linkcheck-hub-lnk]: https://hub.docker.com/r/cytopia/linkcheck

[jlint-git-lnk]: https://github.com/cytopia/docker-jsonlint
[jlint-hub-img]: https://img.shields.io/docker/pulls/cytopia/jsonlint.svg
[jlint-hub-lnk]: https://hub.docker.com/r/cytopia/jsonlint

[ansible-git-lnk]: https://github.com/cytopia/docker-ansible
[ansible-hub-img]: https://img.shields.io/docker/pulls/cytopia/ansible.svg
[ansible-hub-lnk]: https://hub.docker.com/r/cytopia/ansible

[alint-git-lnk]: https://github.com/cytopia/docker-ansible-lint
[alint-hub-img]: https://img.shields.io/docker/pulls/cytopia/ansible-lint.svg
[alint-hub-lnk]: https://hub.docker.com/r/cytopia/ansible-lint

[kubeval-git-lnk]: https://github.com/cytopia/docker-kubeval
[kubeval-hub-img]: https://img.shields.io/docker/pulls/cytopia/kubeval.svg
[kubeval-hub-lnk]: https://hub.docker.com/r/cytopia/kubeval

[gfmt-git-lnk]: https://github.com/cytopia/docker-gofmt
[gfmt-hub-img]: https://img.shields.io/docker/pulls/cytopia/gofmt.svg
[gfmt-hub-lnk]: https://hub.docker.com/r/cytopia/gofmt

[gimp-git-lnk]: https://github.com/cytopia/docker-goimports
[gimp-hub-img]: https://img.shields.io/docker/pulls/cytopia/goimports.svg
[gimp-hub-lnk]: https://hub.docker.com/r/cytopia/goimports

[glint-git-lnk]: https://github.com/cytopia/docker-golint
[glint-hub-img]: https://img.shields.io/docker/pulls/cytopia/golint.svg
[glint-hub-lnk]: https://hub.docker.com/r/cytopia/golint

[elint-git-lnk]: https://github.com/cytopia/docker-eslint
[elint-hub-img]: https://img.shields.io/docker/pulls/cytopia/eslint.svg
[elint-hub-lnk]: https://hub.docker.com/r/cytopia/eslint

[cm-git-lnk]: https://github.com/cytopia/docker-checkmake
[cm-hub-img]: https://img.shields.io/docker/pulls/cytopia/checkmake.svg
[cm-hub-lnk]: https://hub.docker.com/r/cytopia/checkmake

[pcbf-git-lnk]: https://github.com/cytopia/docker-phpcbf
[pcbf-hub-img]: https://img.shields.io/docker/pulls/cytopia/phpcbf.svg
[pcbf-hub-lnk]: https://hub.docker.com/r/cytopia/phpcbf

[pcs-git-lnk]: https://github.com/cytopia/docker-phpcs
[pcs-hub-img]: https://img.shields.io/docker/pulls/cytopia/phpcs.svg
[pcs-hub-lnk]: https://hub.docker.com/r/cytopia/phpcs

[plint-git-lnk]: https://github.com/cytopia/docker-phplint
[plint-hub-img]: https://img.shields.io/docker/pulls/cytopia/phplint.svg
[plint-hub-lnk]: https://hub.docker.com/r/cytopia/phplint

[pcsf-git-lnk]: https://github.com/cytopia/docker-php-cs-fixer
[pcsf-hub-img]: https://img.shields.io/docker/pulls/cytopia/php-cs-fixer.svg
[pcsf-hub-lnk]: https://hub.docker.com/r/cytopia/php-cs-fixer

[bandit-git-lnk]: https://github.com/cytopia/docker-bandit
[bandit-hub-img]: https://img.shields.io/docker/pulls/cytopia/bandit.svg
[bandit-hub-lnk]: https://hub.docker.com/r/cytopia/bandit

[black-git-lnk]: https://github.com/cytopia/docker-black
[black-hub-img]: https://img.shields.io/docker/pulls/cytopia/black.svg
[black-hub-lnk]: https://hub.docker.com/r/cytopia/black

[mypy-git-lnk]: https://github.com/cytopia/docker-mypy
[mypy-hub-img]: https://img.shields.io/docker/pulls/cytopia/mypy.svg
[mypy-hub-lnk]: https://hub.docker.com/r/cytopia/mypy

[pycs-git-lnk]: https://github.com/cytopia/docker-pycodestyle
[pycs-hub-img]: https://img.shields.io/docker/pulls/cytopia/pycodestyle.svg
[pycs-hub-lnk]: https://hub.docker.com/r/cytopia/pycodestyle

[pyds-git-lnk]: https://github.com/cytopia/docker-pydocstyle
[pyds-hub-img]: https://img.shields.io/docker/pulls/cytopia/pydocstyle.svg
[pyds-hub-lnk]: https://hub.docker.com/r/cytopia/pydocstyle

[pylint-git-lnk]: https://github.com/cytopia/docker-pylint
[pylint-hub-img]: https://img.shields.io/docker/pulls/cytopia/pylint.svg
[pylint-hub-lnk]: https://hub.docker.com/r/cytopia/pylint

[tfdocs-git-lnk]: https://github.com/cytopia/docker-terraform-docs
[tfdocs-hub-img]: https://img.shields.io/docker/pulls/cytopia/terraform-docs.svg
[tfdocs-hub-lnk]: https://hub.docker.com/r/cytopia/terraform-docs

[tg-git-lnk]: https://github.com/cytopia/docker-terragrunt
[tg-hub-img]: https://img.shields.io/docker/pulls/cytopia/terragrunt.svg
[tg-hub-lnk]: https://hub.docker.com/r/cytopia/terragrunt

[tgfmt-git-lnk]: https://github.com/cytopia/docker-terragrunt-fmt
[tgfmt-hub-img]: https://img.shields.io/docker/pulls/cytopia/terragrunt-fmt.svg
[tgfmt-hub-lnk]: https://hub.docker.com/r/cytopia/terragrunt-fmt

[yfmt-git-lnk]: https://github.com/cytopia/docker-yamlfmt
[yfmt-hub-img]: https://img.shields.io/docker/pulls/cytopia/yamlfmt.svg
[yfmt-hub-lnk]: https://hub.docker.com/r/cytopia/yamlfmt

[ylint-git-lnk]: https://github.com/cytopia/docker-yamllint
[ylint-hub-img]: https://img.shields.io/docker/pulls/cytopia/yamllint.svg
[ylint-hub-lnk]: https://hub.docker.com/r/cytopia/yamllint


---


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


## License

[MIT License](LICENSE.md)

Copyright (c) 2018 [cytopia](https://github.com/cytopia)
