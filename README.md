# awesome-ci
Awesome Continuous Integration



# Tools

All checks have the option to only check by one or more file **extensions** as well as to **exclude** one or more folders from the whole search.

## 1. File Status

### [git-conflicts](bin/git-conflicts)

Scan files and check if they contain git conflicts.

`git-conflicts --path=.`

### [file-crlf](bin/file-crlf)

Scan files and check if they contain CRLF (Windows Line Feeds).

`file-crlf --text --path=.`


### [file-utf8](bin/file-utf8)

Scan files and check if they have a non UTF-8 encoding.

`file-utf8 --text --path=.`

### [file-utf8-bom](bin/file-utf8-bom)

Scan files and check if they contain BOM (Byte Order Mark): `<U+FEFF>`.

`file-utf8-bom --text --path=.`


## 2. Syntax Error

### [syntax-php](bin/syntax-php)

Scan files for PHP syntax errors.

`syntax-php --extension=php,inc --text --path=.`

### [syntax-css](bin/syntax-css)

Scan CSS files for CSS syntax errors.

`syntax-css --extension=css --text --path=.`

### [syntax-scss](bin/syntax-scss)

Scan SCSS files for SCSS syntax errors.

`syntax-scss --extension=scss --text --path=.`

### [syntax-js](bin/syntax-js)

Scan JS files for JS syntax errors.

`syntax-js --extension=js --text --path=.`


## 3. Code Conventions

### [inline-css](bin/inline-css)

Scan files and check if they contain inline css code.

`inline-css --extension=htm,html,php,tpl --text --path=.`


### [inline-js](bin/inline-js)

Scan files and check if they contain inline javascript code.

`inline-js --extension=htm,html,php,tpl --text --path=.`

