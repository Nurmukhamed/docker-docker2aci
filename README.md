docker-docker2aci
=================

Library and CLI tool to convert Docker images to ACIs in Docker. This image has `docker2aci` installed.

Build
-----

To create the image `themalkolm/docker2aci`, execute the following command:

    $ docker build -t themalkolm/docker2aci .

You can now push the new image to the public registry:
    
    $ docker push themalkolm/docker2aci

Use
---

To convert docker image to aci:

    $ mkdir build
    $ docker run --rm \
        -v $(pwd)/build:/tmp/build:Z \
        themalkolm/docker2aci /bin/bash -c '
      cd /tmp/build
      docker2aci docker://centos:7
      '

Note that we assume you also run `SELinux` enabled system and therefore `:Z` is reqired.
