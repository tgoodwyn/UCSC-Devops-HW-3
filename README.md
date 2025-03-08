

# SEQA.X409 - HW 3
## UCSC Adv Devops, Spring 2025
Building and running a 'hello world' using docker/terraform.


### How to build

This time, we're going to build the docker image and run it using terraform.
```bash
terraform plan
terraform apply
```

### Potential error
In class, an error was encountered when using this provider to build and run local docker images. However, we did not encounter that error. Attached is a screenshot showing our docker and terraform versions.  We're running this on a Macbook Air, M1 2020.





## How to test
Just as with HW 1, we have mapped external port 12344 to internal port 8081.  So you can find the application at `http://localhost:12344`

```bash
curl http://localhost:12344
```

You should receive 'hello, world' in response.


# UCSC-Devops-HW-3
