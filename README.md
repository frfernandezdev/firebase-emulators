# Firebase Emulators and Firebase tools for CI, as services for gitlab-ci
.
This is a small image intended for GitLab CI as a service.

## Simple implementation
In `github-ci.yml`

	   image: python:latest
	   
	   variables:
		   FIREBASE_TOKEN: "<your-token-authentication"
		   FIREBASE_AUTH_EMULATOR_HOST: "emulator:9099"
		   FIREBASE_PROJECT: "<your-project>"
		   FIREBASE_API_KEY: "<your-api-key"
	   services:
		   name: frfernandezdev/firebase-emulators:1.0.0
		   alias: emulator

To access the services, you can use the name of the image (`frfernandezdev-firebase-emulators` or` frfernandezdev__firebase_emulators`) or the assigned alias as expressed in the previous example (`emulator`).


