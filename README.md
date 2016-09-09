# awesome-ci

[![Build Status](https://travis-ci.org/cytopia/awesome-ci.svg?branch=master)](https://travis-ci.org/cytopia/awesome-ci)
[![Latest Stable Version](https://poser.pugx.org/cytopia/awesome-ci/v/stable)](https://packagist.org/packages/cytopia/awesome-ci) [![Total Downloads](https://poser.pugx.org/cytopia/awesome-ci/downloads)](https://packagist.org/packages/cytopia/awesome-ci) [![Latest Unstable Version](https://poser.pugx.org/cytopia/awesome-ci/v/unstable)](https://packagist.org/packages/cytopia/awesome-ci) [![License](https://poser.pugx.org/cytopia/awesome-ci/license)](http://opensource.org/licenses/MIT)
[![Type](https://img.shields.io/badge/type-bash-red.svg)](https://en.wikipedia.org/wiki/Bash_%28Unix_shell%29)

---

**Runs on**

[![Linux](https://raw.githubusercontent.com/cytopia/icons/master/64x64/linux.png)](https://www.kernel.org/)
[![FreeBSD](https://raw.githubusercontent.com/cytopia/icons/master/64x64/freebsd.png)](https://www.freebsd.org)
[![OSX](https://raw.githubusercontent.com/cytopia/icons/master/64x64/osx.png)](https://www.apple.com/osx)



Lot's of tools for git, file and static source code analysis.

**Documentation**

* [Dependencies](dependencies/)
* [Examples](EXAMPLES.md)

---

## Tools

All checks have the option to only check by one or more file **extensions**, by **shebang** as well as to **exclude** one or more folders from the whole search.

**Note:** Fixable options are currently in testing phase. Please report any bugs.


| Type | Tool | Fixable | Description |
|------|------|---------|-------------|
| Git | [git-conflicts](bin/git-conflicts) | | Scan files and check if they contain git conflicts. |
| Git | [git-ignored](bin/git-ignored) | | Scan git directory and see if ignored files are still in git cache. |
| File | [file-crlf](bin/file-crlf) | | Scan files and check if they contain CRLF (Windows Line Feeds). |
| File | [file-empty](bin/file-empty) | | Scan files and check if they are empty (0 bytes). |
| File | [file-trailing-newline](bin/file-trailing-newline) | ✓ | Scan files and check if they contain a trailing newline. |
| File | [file-trailing-single-newline](bin/file-trailing-single-newline) | ✓ | Scan files and check if they contain exactly one trailing newline. |
| File | [file-trailing-space](bin/file-trailing-space) | ✓ | Scan files and check if they contain trailing whitespaces. |
| File | [file-utf8](bin/file-utf8) | ✓ | Scan files and check if they have a non UTF-8 encoding. |
| File | [file-utf8-bom](bin/file-utf8-bom) | | Scan files and check if they contain BOM (Byte Order Mark): `<U+FEFF>`. |
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

find . -type f  -not \( -path "./.git*" -o -path "./.svn*" \) ! -size 0 -print0 | \
   xargs -0 -P 8 -n1 -I % grep -Il '' '%' | \
   tr '\n' '\0' | \
   xargs -0 -P 8 -n1 -I {} sh -c 'awk "/^#!.*(\/sh|[[:space:]]+sh)/{print FILENAME}" "{}" || true' | \
   tr '\n' '\0' | \
   xargs -0 -P 8 -n1  -I % sh -c 'grep --color=always -inHE "if[[:space:]]*\[\[" "%" || true'
```

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
