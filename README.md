Reproducing an issue with Jenkins script security.

## Setup

Pull the image from docker
```
docker pull nuclearsandwich/jenkins-script-security-repro
```

or build it locally after cloning this repository with

```
docker build . -t nuclearsandwich/jenkins-script-security-repro
```

## Usage

Start the jenkins container and give it a name to refer to it for later docker commands.
I gave it access to the host network which you may prefer to avoid with explicit port bindings.

```
docker run --net=host --name jenkins nuclearsandwich/jenkins-script-security-repro
```

Once docker is up and running, add the jobs that reproduce the issue by running the bundled script in another terminal.

```
docker exec jenkins sh /tmp/add_jobs.sh
```

Now visit your jenkins instance via http://localhost:8080 and use the initial admin password from the log.
Triggering a build of failing_job should fail while passing_job should pass.


