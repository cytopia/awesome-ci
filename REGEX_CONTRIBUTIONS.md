# Regex Contributions (`regex-grep` and `regex-perl`)

---

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

---

## Table of Contents

1. [SCSS](https://github.com/cytopia/awesome-ci/REGEX_CONTRIBUTIONS.md#scss)
2. [HTML](https://github.com/cytopia/awesome-ci/REGEX_CONTRIBUTIONS.md#html)


## Checks


### SCSS


Check `*url('');` for Leading slash (`/`)

```bash
# This check makes sure that all URL values should not begin with a leading `/`,
# because my projects default requirements are to use something like:
#
# * url('#{$webroot}/img/bg.png
# * url('../other/bg.png')

$ regex-grep --path=. --extension=scss --text --size --custom="url\([[:space:]]*['\''\\\"]?[[:space:]]*/"

$ regex-perl --path=. --extension=scss --text --size --custom="url\([[:space:]]*[\x27\"]?[[:space:]]*\/"
```

Check `*url('');` for absolute URL

```bash
# Check css tags containing:
#
# * url('http[s]://
# * url("http[s]://
# * url(http[s]://

$ regex-grep --path=. --extension=scss --text --size --custom="url\([[:space:]]*['\''\\\"]?[[:space:]]*http[s]?://"

$ regex-perl --path=. --extension=scss --text --size --custom="url\([[:space:]]*[\x27\"]?[[:space:]]*http[s]?:\/\/"
```


### HTML

Check `href` for absolute URL

```bash
# Check hrefs containing:
#
# * href="http[s]://
# * href='http[s]://
# * href=http[s]://
#
$ regex-grep --path=. --extension=htm,html,php,tpl --text --size --custom="href=[[:space:]]*['\''\\\"]?http[s]?://"

$ regex-perl --path=. --extension=htm,html,php,tpl --text --size --custom="href=[[:space:]]*[\x27\"]?http[s]?:\/\/"
```


Check HTML tags for hardcoded languages

```bash
# Check lang for non-dynamic values (with hardcoded) tags containing
#
# * xml:lang="en"
# * xml:lang='de'
# * xml:lang=zh
# * lang="ko"
# * lang='ru'
# * lang=pl
#
$ regex-grep --path=. --extension=htm,html,php,tpl --text --size --custom="(:|[[:space:]])lang=['\''\\\"]?[A-Za-z]{2}['\''\\\"]?(>|[[:space:]])"

$ regex-perl --path=. --extension=htm,html,php,tpl --text --size --custom="(:|[[:space:]])lang=[\x27\"]?[A-Za-z]{2}[\x27\"]?(>|[[:space:]])"
```
