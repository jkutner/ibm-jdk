# IBM J9 JDK for Heroku

This repository prepares an IBM JDK for running on Heroku. The IBM JDK cannot
be installed by Heroku due to the license policy of the runtime.

## Usage

Install [Docker](https://www.docker.com) and then run this command:

```
./ibm-jdk-8.0-3.10.sh
```

Accept the license, and choose the default directories when prompted. When it's done, a `.tar.gz` file will be created in your `builds/` directory. Upload this to a publicly accessible server, and run:

```
$ heroku config:set JDK_URL_1_8=[url] --app sushi
```

Then redeploy.

## License

MIT
