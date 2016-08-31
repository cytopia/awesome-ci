# awesome-ci

Awesome Continuous Integration.

---

Lot's of tools for git, file and static source code analysis.

**Note:** All scripts from [dependencies/](dependencies/) must be placed into an executable path (`/usr/bin`, `/usr/local/bin` or equivalent) prior usage.

@see [dependencies/README.md](dependencies/) for more information.

---

## Install

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


## Usage

* All tools share the same pattern (except `git-ignored`) and can be used with the same command line arguments.
* Some tools have an additional option `--custom=""` to overwrite the command itself (this is explained and shown in detail in each command's `--help` option).

**General usage options:**

```bash
# Required:
  --path            # Specify the path where to scan

# Optional pattern (each option is logically and-ed):
  --text            # Only scan non-binary files
  --size            # Only scan non-empty files (greater 0 bytes)
  --shebang         # Only scan files (shell scripts) that match a certain shebang
  --extension       # Only scan files with these file extensions
  --ignore          # Ignore files/folders

# Optional misc:
  --config          # Specify configuration file
  --verbose         # Show files and commands as being processed
  --debug           # Show additional debug messages
  --list            # Only show files that would be processed (no processing)
  --dry             # Show command that would be executed (no processing)

# System
  --help            # Show help
  --info            # Show version of required binaries
  --version         # Show tool version

```

## Tools

All checks have the option to only check by one or more file **extensions** as well as to **exclude** one or more folders from the whole search.



### 1. Git analysis

#### [git-conflicts](bin/git-conflicts)

Scan files and check if they contain git conflicts.

`git-conflicts --size --path=.`


#### [git-ignored](bin/git-ignored)

Scan git directory and see if ignored files are still in git cache.

`git-ignored --path=.`


### 2. File analysis

#### [file-crlf](bin/file-crlf)

Scan files and check if they contain CRLF (Windows Line Feeds).

`file-crlf --text --size --path=.`


#### [file-empty](bin/file-empty)

Scan files and check if they are empty (0 bytes).

`file-empty --path=.`

**(Do not use `--size` here, it will cancel the each other out)**


#### [file-trailing-newline](bin/file-trailing-newline)

Scan files and check if they contain a trailing newline.

`file-trailing-newline --text --size --path=.`


#### [file-trailing-single-newline](bin/file-trailing-single-newline)

Scan files and check if they contain exactly one trailing newline.

`file-trailing-single-newline --text --size --path=.`



#### [file-trailing-space](bin/file-trailing-space)

Scan files and check if they contain trailing whitespaces.

`file-trailing-space --text --size --path=.`


#### [file-utf8](bin/file-utf8)

Scan files and check if they have a non UTF-8 encoding.

`file-utf8 --text --size --path=.`


#### [file-utf8-bom](bin/file-utf8-bom)

Scan files and check if they contain BOM (Byte Order Mark): `<U+FEFF>`.

`file-utf8-bom --text --size --path=.`


### 3. Syntax Error

#### [syntax-bash](bin/syntax-bash)

Scan shell files for bash syntax errors.

```bash
# By extension
$ syntax-bash --text --size --extension=sh,bash --path=.

# By shebang
$ syntax-bash --text --size --shebang=bash --path=.

```


#### [syntax-css](bin/syntax-css)

Scan CSS files for CSS syntax errors.

`syntax-css --text --size --extension=css --path=.`


#### [syntax-js](bin/syntax-js)

Scan JS files for JS syntax errors.

`syntax-js --text --size --extension=js --path=.`


#### [syntax-json](bin/syntax-json)

Scan files for JSON syntax errors.

`syntax-json --text --size --extension=json --path=.`


#### [syntax-markdown](bin/syntax-markdown)

Scan files for Markdown syntax errors.

`syntax-markdown --text --size --extension=md --path=.`


#### [syntax-perl](bin/syntax-perl)

Scan Perl files for Perl syntax errors.

```bash
# By extension
$ syntax-perl --text --size --extension=pl --path=.

# By shebang
$ syntax-perl --text --size --shebang=perl --path=.
```


#### [syntax-php](bin/syntax-php)

Scan files for PHP syntax errors.

```bash
# By extension
$ syntax-php --text --size --extension=php,inc --path=.

# By shebang
$ syntax-php --text --size --shebang=php --path=.
```


#### [syntax-python](bin/syntax-python)

Scan Python files for Python syntax errors.

```bash
# By extension
$ syntax-python --text --size --extension=py --path=.

# By shebang
$ syntax-python --text --size --shebang=python --path=.
```


#### [syntax-ruby](bin/syntax-ruby)

Scan Ruby files for Ruby syntax errors.

```bash
# By extension
$ syntax-ruby --text --size --extension=rb --path=.

# By shebang
$ syntax-ruby --text --size --shebang=ruby --path=.
```


#### [syntax-scss](bin/syntax-scss)

Scan SCSS files for SCSS syntax errors.

`syntax-scss --text --size --extension=scss --path=.`


#### [syntax-sh](bin/syntax-sh)

Scan shell files for /bin/sh syntax errors.

```bash
# By extension
$ syntax-sh --text --size --extension=sh,bash --path=.

# By shebang
$ syntax-sh --text --size --shebang=sh --path=.
```



### 4. Code Conventions

#### [inline-css](bin/inline-css)

Scan files and check if they contain inline css code.

`inline-css --text --size --extension=htm,html,php,tpl --path=.`


#### [inline-js](bin/inline-js)

Scan files and check if they contain inline javascript code.

`inline-js --text --size --extension=htm,html,php,tpl --path=.`



### 5. Custom regex

If none of the below tools fit your need, use one of these two custom regex tools. If you think your required regex is quite common, please drop me an issue and i will add it.

**Note about escaping: (grep)**

* Escape `'` (single quote) with `'\''`
* Escape `"` (double quote) with `\\\"`

**Note about escaping: (perl)**

* Escape `'` (single quote) with `\x27`
* Escape `"` (double quote) with `\x22` or `\"`
* Escape `/` (forward slash) with `\/`

**Note about escaping: (general)**

Depending on your current shell (such as: Bash, ZSH, TCH, etc), you might have to escape special symbols so they are not interpretated on your shell.

Escapes for Bash (and alike)

* Escape `!` with `\!`


#### [regex-grep](bin/regex-grep)

`egrep` (`grep -E`) regex version to scan files for an occurance.

`regex-grep --text --size --path=. --custom=""`

#### [regex-perl](bin/regex-perl)

`perl` regex version to scan files for an occurance.

`regex-perl --text --size --path=. --custom=""`


**Examples**

Check for css tags containing: `url('/` or `url("/` or `url(/`

```bash
$ regex-grep --path=. --extension=css,scss --text --size --custom="url\([[:space:]]*['\''\\\"]?[[:space:]]*/"

$ regex-perl --path=. --extension=css,scss --text --size --custom="url\([[:space:]]*[\x27\"]?[[:space:]]*\/"
```

Check for css tags containing: `url('http[s]://` or `url("http[s]://` or `url(http[s]://`

```bash
$ regex-grep --path=. --extension=css,scss --text --size --custom="url\([[:space:]]*['\''\\\"]?[[:space:]]*http[s]?://"

$ regex-perl --path=. --extension=css,scss --text --size --custom="url\([[:space:]]*[\x27\"]?[[:space:]]*http[s]?:\/\/"
```

 Check common html file tpyes for `href="http[s]*://`

```bash
$ regex-grep --path=. --extension=htm,html,php,tpl --text --size --custom="href=[[:space:]]*['\''\\\"]?http[s]?://"

$ regex-perl --path=. --extension=htm,html,php,tpl --text --size --custom="href=[[:space:]]*[\x27\"]?http[s]?:\/\/"
```

