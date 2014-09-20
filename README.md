IR Data Sets within docker volume
=================================

In order to provide reproducibility of IR experiments you can run it within
docker containers. Now this Data Volume includes following raw datasets:
`LISA`, `NPL`, `CACM`, `CISI`, `Cranfield`, `Time`, `Medline`, `Adi`.

All DataSets pulled from
[ir.dcs.gla.ac.uk](http://ir.dcs.gla.ac.uk/resources/test_collections)

All datasets located in `/usr/data/` in separate folders.

As a base image used `ubuntu:10.04` because it is smallest available.

Result container size is about `210 MB`, `ubuntu:10.04` is about `183 MB`.

Usage
=====

Build is simple as:

    git clone https://github.com/krasnobaev/docker-irdatasets.git
    cd docker-irdatasets
    docker build -t krasnobaev/irdatasets .

Or, instead you can pull latest automatically builded image from
[docker.com](https://registry.hub.docker.com/u/krasnobaev/irdatasets/):

    docker pull krasnobaev/irdatasets

Now you should start container as a Data Volume Container:

    docker run -d -v /usr/data --name irds -t krasnobaev/irdatasets \
    echo DataSets for IR experiments

After that, attach volume to your application:

    docker run -i --volumes-from irds -t ubuntu ls -l /usr/data/

ToDo
====

1. Provide some parser and scripts to convert datasets to some common
data formats, like XML or JSON.
2. Include some other datasets.

