FROM debian:buster-slim

ENV BUILD_DEPS \
	curl \
	gcc \
	gcc-multilib \
	make \
	ruby-dev \
	xz-utils

ENV RUN_DEPS \
	dos2unix \
	file \
	git \
	moreutils \
	php-cli \
	python \
	ruby \
	shellcheck

RUN set -x \
# Install apt packages
	&& apt-get update \
	&& apt-get install --no-install-recommends --no-install-suggests -y \
		${BUILD_DEPS} \
		${RUN_DEPS} \
# Install Node/Npm
	&& VERSION="$( curl https://nodejs.org/en/ 2>/dev/null | grep LTS | grep -Eo 'data-version="v?[.0-9]+"' | grep -Eo "v?[.0-9]+" )" \
	&& mkdir -p /usr/local/src \
	&& curl https://nodejs.org/dist/${VERSION}/node-${VERSION}-linux-x64.tar.xz > /usr/local/src/node.tar.xz \
	&& tar xvf /usr/local/src/node.tar.xz -C /usr/local/src \
	&& rm -rf /usr/local/src/node.tar.xz \
	&& rm -rf /usr/local/src/node-${VERSION}-linux-x64/etc \
	&& rm -rf /usr/local/src/node-${VERSION}-linux-x64/include \
	&& rm -rf /usr/local/src/node-${VERSION}-linux-x64/share \
	&& ln -sf /usr/local/src/node-${VERSION}-linux-x64 /usr/local/node \
	&& ln -sf /usr/local/node/bin/* /usr/local/bin/ \
# Install Npm modules
	&& npm install -g eslint \
	&& npm install -g mdlint \
	&& npm install -g jsonlint \
	&& ln -sf /usr/local/node/bin/* /usr/local/bin/ \
# Install Gems
	&& gem install scss_lint \
	&& gem install mdl \
# Clean-up
	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps \
		${BUILD_DEPS} \
	&& rm -rf /var/lib/apt/lists/*

# Add Awesome-CI
COPY ./bin /usr/bin
COPY ./dependencies /usr/bin
