# MLflow docker image

MLflow not setup offical image, so I've created one...

---

## Run MLflow UI server

For run MLflow sever locally, just run image with volume your mlflow runs folder

```bash
docker run -it --rm -v ${PWD}/mlruns:/mlruns --name mlflow -p 5000:5000 leovs09/mlflow:0.1.0
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

## Changelog

The changelog can be found on the [Releases page](/releases).

## Contributing

Everyone is welcome to contribute.

## Authors and license

[leovs09](github.com/leovs09/mlflow) and [contributors](/graphs/contributors).

MIT License, see the included [License.md](LICENSE.md) file.
