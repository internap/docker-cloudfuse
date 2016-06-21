# docker-cloudfuse

Recipe for building and launching [cloudfuse volume](https://github.com/redbo/cloudfuse)

## Start

```sh
docker run internap/docker-localshop
```

## Environment Variables

* `USERNAME` (Account username for authentication, required)
* `API_KEY` (API key for authentication with Rackspace)
* `TENANT` (Tenant name for authentication with Openstack)
* `PASSWORD` (Authentication password with Openstack)
* `AUTHURL` *https://identity.api.rackspacecloud.com/v2.0/* (Authentication url)
* `REGION` (Regional endpoint to use)
* `USE_SNET` *False* (True to use Rackspace ServiceNet for connections)
* `CACHE_TIMEOUT` *600* (Seconds for directory caching)
* `VERIFY_SSL` *True* (False to disable SSL cert verification)


# License

docker-cloudfuse is distributed under Apache 2.0 LICENSE.