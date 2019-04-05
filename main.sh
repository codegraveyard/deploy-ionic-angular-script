#!/usr/bin/env bash


# Copy default files found in most repositories
function buildApp() {
    log "Building '${1}'..."

    cd ${1}

    ionic build

    cd ..
}

# Copy default files found in most repositories
function cloneRepo() {
    log "Cloning '${1}'..."

    git clone ${1}
}

# Install node modules
#
# @param $1 directory
function installDependencies() {
    log "Install dependencies '${1}'..."

    cd ${1}

    npm install

    cd ..
}

# Write to the command prompt
#
# @param $1 message
function log() {
    echo "###"
    echo "### [$(pwd)]"
    echo "### $1"
    echo "###"
}

# Move build files to directory
#
# @param $1 message
function moveOutput() {
    log "Moving build..."

    mv "${1}/www/*" "."
}

function deployIonic() {
    cloneRepo "git@github.com:${1}/${2}.git"

    installDependencies "${2}"

    buildApp "${2}"

    moveBuild "${2}"
}

export -f version
