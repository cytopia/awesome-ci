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

`file-crlf --extension=bash,bat,c,cfg,conf,config,cpp,css,csv,diff,h,hpp,htm,html,inc,ini,java,js,json,md,patch,php,phpunit,py,rb,tpl,txt,scss,sh,sql,xml,yaml,yml --path=.`


### [file-utf8](bin/file-utf8)

Scan files and check if they have a non UTF-8 encoding.

`file-utf8 --extension=bash,bat,c,cfg,conf,config,cpp,css,csv,diff,h,hpp,htm,html,inc,ini,java,js,json,md,patch,php,phpunit,py,rb,tpl,txt,scss,sh,sql,xml,yaml,yml --path=.`

### [file-utf8-bom](bin/file-utf8-bom)

Scan files and check if they contain BOM (Byte Order Mark): `<U+FEFF>`.

`file-utf8-bom --extension=bash,bat,c,cfg,conf,config,cpp,css,csv,diff,h,hpp,htm,html,inc,ini,java,js,json,md,patch,php,phpunit,py,rb,tpl,txt,scss,sh,sql,xml,yaml,yml --path=.`


## 2. Syntax Error

### [syntax-php](bin/syntax-php)

Scan files for PHP syntax errors.

`syntax-php --extension=php,inc --path=.`

### syntax-js

`eslint --no-eslintrc .`

## 3. Code Conventions

### [inline-css](bin/inline-css)

Scan files and check if they contain inline css code.

`inline-css --extension=htm,html,php,tpl --path=.`


### [inline-js](bin/inline-js)

Scan files and check if they contain inline javascript code.

`inline-js --extension=htm,html,php,tpl --path=.`

