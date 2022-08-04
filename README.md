# CalDavClient [![Build Status][travis_badge]][travis_url]
SWT22 Group 08



<!-- References -->
[travis_badge]: https://travis-ci.org/hpi-swa-teaching/CalDavClient.svg?branch=master
[travis_url]: https://travis-ci.org/hpi-swa-teaching/CalDavClient


## Installation

    Metacello new
        baseline: 'SCM';
        repository: 'github://hpi-swa-teaching/CalDavClient:develop/packages';
        load.

To also load the tests, run:

    Metacello new
        baseline: 'MorphicTestingFramework';
        repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages';
        load.

## Getting started
Open the app in the Workspace using `SCMApp start`.

Further details on how to get started, the applied code standard or the current version of our class diagram can be found at the wiki section of the repository.
