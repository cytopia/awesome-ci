#!/usr/bin/env bash

set -e
set -u
set -o pipefail


###
### Define Paths
###
GIT_PATH="$( cd "$(dirname "$0")" ; pwd -P )/.."
RUN_PATH="${GIT_PATH}/test/test_single.sh"


${RUN_PATH} file-cr
${RUN_PATH} file-crlf
${RUN_PATH} file-empty
${RUN_PATH} file-nullbyte-char
${RUN_PATH} file-trailing-newline
${RUN_PATH} file-trailing-single-newline
${RUN_PATH} file-trailing-space
${RUN_PATH} file-utf8
${RUN_PATH} file-utf8-bom
${RUN_PATH} git-conflicts
${RUN_PATH} git-ignored
${RUN_PATH} inline-css
${RUN_PATH} inline-js
${RUN_PATH} regex-grep
${RUN_PATH} regex-perl
${RUN_PATH} syntax-bash
${RUN_PATH} syntax-css
${RUN_PATH} syntax-js
${RUN_PATH} syntax-json
${RUN_PATH} syntax-markdown
${RUN_PATH} syntax-perl
${RUN_PATH} syntax-php
${RUN_PATH} syntax-python
${RUN_PATH} syntax-ruby
${RUN_PATH} syntax-scss
${RUN_PATH} syntax-sh
