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
    if [[ ${1} == "ssh" ]]; then
        repo = "git@github.com:"
    else
        repo = "https://github.com/"
    fi

    repo = "${repo}${2}.git"

    log "Cloning '${repo}'..."

    git clone ${repo}
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
    ssh=${3:-ssh}

    output=${4:-execution_location}
    if [[ ${1} == "execution_location" ]]; then
        repo = "."
    fi

    cloneRepo ${ssh} "${1}/${2}.git"

    installDependencies "${2}"

    buildApp "${2}"

    moveBuild "${2}" "${output}"
}

export -f deployIonic
