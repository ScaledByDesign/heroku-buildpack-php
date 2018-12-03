#!/usr/bin/env bash
# Build Path: /app/.heroku/php/


install_ioncube_ext() {

	DEFAULT_VERSION="LATEST"
	dep_version=${VERSION:-$DEFAULT_VERSION}
	dep_url=https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
	dep_dirname=ioncube

	echo "---lalith ioncube installing--> Packaging ext/ioncube ${DEFAULT_VERSION}..."

    curl -L ${dep_url} | tar xz
    cp ioncube/ioncube_loader_lin_7.2.so /app/.heroku/php/lib/php/extensions/no-debug-non-zts-20170718

    echo 'zend_extension=ioncube_loader_lin_7.2.so' > /app/.heroku/php/etc/php/conf.d

    popd
}

echo "-----> Done."