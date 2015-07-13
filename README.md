# dregistry_mnt
A Docker Registry running in a container using volumes.


Execute:
```bash
docker build -t dregistry_mnt .
```
to build from this source. 


Execute:
```bash
docker run -d -p 5000:5000 -v [location on host]:/data --name=registry  dregistry_mnt
```
to run.
