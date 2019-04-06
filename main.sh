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
    REPO=""

    if [[ ${1} == "ssh" ]]; then
        REPO="git@github.com:"
    else
        REPO="https://github.com/"
    fi

    REPO=${REPO}${2}".git"

    log "Cloning '"${REPO}"'..."

    git clone ${REPO}
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
function moveBuild() {
    log "Moving build..."

    mv "${1}/www/*" "${2}"
}

function deployIonic() {
    SSH=${3:-ssh}

    OUTPUT=${4:-execution_location}
    if [[ ${1} == "execution_location" ]]; then
        OUTPUT="."
    fi

    cloneRepo ${SSH} ${1}"/"${2}".git"

    installDependencies "${2}"

    buildApp "${2}"

    moveBuild "${2}" OUTPUT
}

export -f deployIonic
