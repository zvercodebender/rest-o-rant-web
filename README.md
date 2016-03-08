# To build

1. Install Java 8.
1. Modify the `url` and `certPath` properties in the `docker` section of the `build.gradle` file to point to your Docker machine.
1. Build the image with: `./gradlew clean buildDockerImage`
  * If you want to override the version of the image built, use: `./gradlew -Pversion=_VERSION_ clean buildDockerImage`

# To run

1. Ensure that the  [rest-o-rant-api](https://github.com/xebialabs/rest-o-rant-api) Docker container is running and is called `rest-o-rant-api`.
1. Run the Docker image built in the previous step by executing: `docker run -dP --link rest-o-rant-api --name rest-o-rant-web dkr-reg:5000/rest-o-rant-web:v1`

# To access

1. Check the port at which port 80 is exposed by running `docker ps`.
1. Open `http://<DOCKER>:<PORT>/findrestaurants`.
1. See the JSON result.
