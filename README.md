# docker-cloudfuse

Recipe for building and launching [cloudfuse volume](https://github.com/fordodone/cloudfuse)

## Start

```sh
docker run -d --cap-add SYS_ADMIN --device /dev/fuse internap/docker-cloudfuse
```

## Environment Variables

* `USERNAME` (Account username for authentication, required)
* `API_KEY` (API key for authentication with Rackspace)
* `TENANT` (Tenant name for authentication with Openstack)
* `PASSWORD` (Authentication password with Openstack)
* `AUTHURL` (Authentication url, defaults to Rackspace's cloud)
* `REGION` (Regional endpoint to use)
* `USE_SNET` *False* (True to use Rackspace ServiceNet for connections)
* `CACHE_TIMEOUT` *600* (Seconds for directory caching)
* `VERIFY_SSL` *True* (False to disable SSL cert verification)


## Example

```sh
docker run -d --env-file ./envfile-sample --cap-add SYS_ADMIN --device /dev/fuse internap/docker-cloudfuse
```

envfile-sample:
```
USERNAME=stackbar
TENANT=stackbar
PASSWORD=password
AUTHURL=https://identity.api.cloud.iweb.com/v2.0
REGION=nyj01
```


# License

docker-cloudfuse is distributed under Apache 2.0 LICENSE.