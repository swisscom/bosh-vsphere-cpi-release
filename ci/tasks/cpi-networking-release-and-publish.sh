#!/usr/bin/env bash

set -e

pushd bosh-cpi-src
    ./compile-iso9660wrap.sh
    pushd src/vsphere_cpi
        ./vendor_gems
    popd
    bosh create-release --tarball bosh-vsphere-cpi-networking-release.tgz --force
popd

mv bosh-cpi-src/bosh-vsphere-cpi-networking-release.tgz bosh-vsphere-cpi-networking-release