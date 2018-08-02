#!/usr/bin/env bash

source source-ci/ci/shared/tasks/setup-env-proxy.sh

if [ ! -e director-state-v65/director-state.json ]; then
  echo "director-state.json does not exist, skipping..."
  exit 0
fi

if [ -d "director-state-v65/.bosh" ]; then
  # reuse compiled packages
  cp -r director-state/.bosh $HOME/
fi

cp director-config-v65/director.yml director-state-v65
cp director-creds-v65/creds.yml director-state-v65
cp director-env-v65/director.env director-state-v65
cp cpi-release/*.tgz director-state-v65/cpi-release/

pushd director-state-v65 > /dev/null
  # Don't exit on failure to delete existing deployments
  set +e
    source director.env

    # teardown deployments against BOSH Director
    echo "deleting all deployments"
    bosh deployments | awk '{print $1}' | xargs --no-run-if-empty -n 1 bosh -n delete-deployment --force -d
    echo "cleaning up bosh BOSH Director..."
    time bosh -n clean-up --all
  set -e

  echo "deleting existing BOSH Director VM..."
  bosh -n delete-env --vars-store creds.yml -v director_name=bosh director.yml
popd