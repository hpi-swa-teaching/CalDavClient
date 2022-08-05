# CalDavClient [![Build Status][travis_badge]][travis_url]
SWT22 Group 08

<p align="center"><img src="https://user-images.githubusercontent.com/73845790/183123995-2678f778-0681-42ba-a7a3-5aa7c7c25762.png" width="40%"></p>


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
The most current version of the SCM project can be found on the develop branch.

Open the app in the Workspace using `SCMApp start`.

Further details on how to get started, the applied code standard or the current version of our class diagram can be found at the wiki section of the repository.

