# go-kong-plugin-playground

Development environment for Kong plugin

This code runs a local instance of the Kong API gateway + Konga + Echo service, allowing you to test a plugin coded in Golang.

You can code your plugin in the /plugin folder, and run the environment :)

## Run

```
docker-compose up --build
```

The Konga UI will be available at: http://localhost:1337, using the default admin credentials (admin/admin123). To request the service created with the plugin, use this curl:

```
curl --location 'http://localhost:8000/test' --header 'test-header: value'
```

PS.: You may need to enable the connection in the Konga UI. Just go to "Connections" and activate the available connection.

## References

- [Kong docs - Write plugins in Go](https://docs.konghq.com/gateway/latest/plugin-development/pluginserver/go/)
- [Nylas blog - Building custom plugins for Kong API gateway](https://www.nylas.com/blog/building-custom-plugins-for-kong-api-gateway-dev/)
- [Konga docs - Changing the default user seed data](https://github.com/pantsel/konga/blob/master/docs/SEED_DEFAULT_DATA.md)