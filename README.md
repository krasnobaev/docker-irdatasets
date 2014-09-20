IR Data Sets within docker volume
=================================

In order to provide reproducibility of IR experiments you can run it within 
containers. Now this Data Volume includes following raw datasets: `LISA`,
`NPL`, `CACM`, `CISI`, `Cranfield`, `Time`, `Medline`, `Adi`.

All DataSets pulled from `http://ir.dcs.gla.ac.uk/resources/test_collections`

build is simple as:

`docker build -t krasnobaev/irdatasets .`

now you should start it as Data Volume Container:

`docker run -d -v /usr/data --name irds krasnobaev/irdatasets echo DataSets for IR experiments`

now you can attach this volume to your application:
`docker run -i --volumes-from irds -t ubuntu ls -l /usr/data/`

ToDo
====

1. Provide some parser and scripts to convert datasets to some common
data formats, like XML or JSON
2. Include some other datasets

