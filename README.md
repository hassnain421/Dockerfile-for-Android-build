# Dockerfile-for-Android-build
Dockerfile for Android build which includes java and android-sdk tools and then build it using gradlew.
android.sh file includes the script which builds the docker file and then starts a container with tag testcontainer
This tag helps in copying apk from inside the container
Then removing this container to that everytime we can run the same file
