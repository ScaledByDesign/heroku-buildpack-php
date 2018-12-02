#!/usr/bin/env bash
# Build Path: /app/.heroku/php/


install_ioncube_ext() {

	DEFAULT_VERSION="LATEST"
	dep_version=${VERSION:-$DEFAULT_VERSION}
	dep_url=https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
	dep_dirname=ioncube

	echo "---lalith ioncube installing--> Packaging ext/ioncube ${DEFAULT_VERSION}..."

    curl -L ${dep_url} | tar xz

    pushd ${dep_dirname}
    ext_dir=$build_dir/.heroku/php
    bin_dir=$build_dir/.heroku/php/bin
    mkdir -p ${ext_dir}
    mkdir -p ${bin_dir}
    cp ioncube_loader_lin_${PHP_VERSION%.*}.so ${ext_dir}/ioncube.so
    popd
}

echo "-----> Done."