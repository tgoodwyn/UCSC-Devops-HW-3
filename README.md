# hello_http
Hello world with a webserver in C


### How to build

Build the Docker image
```bash
docker build -t hello_http .
```

## How to run
In prod we generally run our app on 12344.  If you want to set the dev envup so that it can be reached on port 12344:

```bash
docker run -d -p 12344:8081 hello_http
```


## How to test

The application will be available at `http://localhost:12344`

```bash
curl http://localhost:12344
```

You should receive 'hello, world' in response.


# UCSC-Devops-HW-3
