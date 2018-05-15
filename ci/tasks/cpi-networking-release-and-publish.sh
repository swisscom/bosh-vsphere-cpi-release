#!/usr/bin/env bash

mkdir  bosh-vsphere-cpi-networking-release

pushd bosh-cpi-src
    ./compile-iso9660wrap.sh
    ./src/vsphere_cpi/vendor_gems
    bosh create-release --tarball bosh-vsphere-cpi-networking-release.tgz --force
popd

mv bosh-cpi-src/bosh-vsphere-cpi-networking-release.tgz bosh-vsphere-cpi-networking-release