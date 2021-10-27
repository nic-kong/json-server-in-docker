# json-server-in-docker

[JSON Server](https://github.com/typicode/json-server) provides REST API mocking based on a plain JSON file.

## Usage
The command to run the container:

```bash
$ docker run -d --rm -p 8080:8080 [-v %cd%:/data] json-server
```