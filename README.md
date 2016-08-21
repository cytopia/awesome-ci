# awesome-ci

Awesome Continuous Integration.

---

Lot's of tools for git, file and static source code analysis.

**Note:** All scripts from [dependencies/](dependencies/) must be placed into an executable path (`/usr/bin`, `/usr/local/bin` or equivalent) prior usage.

---

## Usage

* All tools share the same pattern (except `git-ignored`) and can be used with the same command line arguments.
* Some tools have an additional option `--custom=""` to overwrite the command itself.

**General usage options:**

```shell
# Required:
  --path            # Specify the path where to scan

# Optional:
  --text            # Only scan non-binary files
  --extension       # Only scan files with these file extensions
  --ignore          # Ignore files/folders
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

`git-conflicts --path=.`


#### [git-ignored](bin/git-ignored)

Scan git directory and see if ignored files are still in git cache.

`git-ignored --path=.`


### 2. File analysis

#### [file-crlf](bin/file-crlf)

Scan files and check if they contain CRLF (Windows Line Feeds).

`file-crlf --text --path=.`


#### [file-empty](bin/file-empty)

Scan files and check if they are empty (0 bytes).

`file-empty --path=.`


#### [file-trailing-newline](bin/file-trailing-newline)

Scan files and check if they contain a trailing newline.

```shell
# At least 1 trailing newline
$ file-trailing-newline --text --path=.

# Exactly only 1 trailing newline
$ file-trailing-newline --path=. --custom="-1 \"%\" || echo \"%: Not exactly 1 trailing newline\""
```


#### [file-trailing-space](bin/file-trailing-space)

Scan files and check if they contain trailing whitespaces.

`file-trailing-space --text --path=.`


#### [file-utf8](bin/file-utf8)

Scan files and check if they have a non UTF-8 encoding.

`file-utf8 --text --path=.`


#### [file-utf8-bom](bin/file-utf8-bom)

Scan files and check if they contain BOM (Byte Order Mark): `<U+FEFF>`.

`file-utf8-bom --text --path=.`


### 3. Syntax Error

#### [syntax-bash](bin/syntax-bash)

Scan shell files for bash syntax errors.

`syntax-bash --extension=sh,bash --text --path=.`


#### [syntax-css](bin/syntax-css)

Scan CSS files for CSS syntax errors.

`syntax-css --extension=css --text --path=.`


#### [syntax-js](bin/syntax-js)

Scan JS files for JS syntax errors.

`syntax-js --extension=js --text --path=.`


#### [syntax-json](bin/syntax-json)

Scan files for JSON syntax errors.

`syntax-json --extension=json --text --path=.`


#### [syntax-markdown](bin/syntax-markdown)

Scan files for Markdown syntax errors.

`syntax-markdown --extension=md --text --path=.`


#### [syntax-perl](bin/syntax-perl)

Scan Perl files for Perl syntax errors.

`syntax-perl --extension=pl --text --path=.`


#### [syntax-php](bin/syntax-php)

Scan files for PHP syntax errors.

`syntax-php --extension=php,inc --text --path=.`


#### [syntax-python](bin/syntax-python)

Scan Python files for Python syntax errors.

`syntax-python --extension=py --text --path=.`


#### [syntax-ruby](bin/syntax-ruby)

Scan Ruby files for Ruby syntax errors.

`syntax-ruby --extension=rb --text --path=.`


#### [syntax-scss](bin/syntax-scss)

Scan SCSS files for SCSS syntax errors.

`syntax-scss --extension=scss --text --path=.`


#### [syntax-sh](bin/syntax-sh)

Scan shell files for /bin/sh syntax errors.

`syntax-sh --extension=sh,bash --text --path=.`



### 4. Code Conventions

#### [inline-css](bin/inline-css)

Scan files and check if they contain inline css code.

`inline-css --extension=htm,html,php,tpl --text --path=.`


#### [inline-js](bin/inline-js)

Scan files and check if they contain inline javascript code.

`inline-js --extension=htm,html,php,tpl --text --path=.`


