# MLflow docker image

MLflow not setup offical image, so I've created one...

---

## Run MLflow UI server

For run MLflow sever locally, just copy docker-compose content and run

```bash
docker-compose run --rm --service-ports mlflow
```

And open <http://localhost:5000>

## Image development

For build new image change image version in **Makefile**, and run

```bash
make
```

### Start new image

```bash
make start
```

### Push image

after build complete just push image to docker registry

```bash
make push
```

## Important

mlflow server will fail against a database-backed store with an out-of-date database schema. To prevent this, upgrade your database schema to the latest supported version using mlflow db upgrade [db_uri]. Schema migrations can result in database downtime, may take longer on larger databases, and are not guaranteed to be transactional. You should always take a backup of your database prior to running mlflow db upgrade - consult your database’s documentation for instructions on taking a backup.

## Changelog

The changelog can be found on the [Releases page](/releases).

## Contributing

Everyone is welcome to contribute.

## Authors and license

[leovs09](github.com/leovs09/mlflow) and [contributors](/graphs/contributors).

MIT License, see the included [License.md](LICENSE.md) file.
