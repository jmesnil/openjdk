#!/bin/sh
# Configure module
set -e

SCRIPT_DIR=$(dirname $0)
ARTIFACTS_DIR=${SCRIPT_DIR}/artifacts

chown -R default:root $ARTIFACTS_DIR
chmod -R ug+rwX $ARTIFACTS_DIR
chmod ug+x ${ARTIFACTS_DIR}/opt/jboss/container/maven/36/scl-enable-maven

pushd ${ARTIFACTS_DIR}
cp -pr * /
popd
