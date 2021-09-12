docker rm example-app
docker build -t firebase-emulators .
docker run -it \
	-p 9000:9000 \
	-p 9099:9099 \
	-e FIREBASE_PROJECT='conexperto-admin' \
	-e FIREBASE_TOKEN='1//01oOxnx8H1x1bCgYIARAAGAESNwF-L9IrDYa8EKEGhP55_lSx5MzPI-76952cMi9esR06R45VTkqzwkYhx5x2ydqBArg1UzfqH54' \
	--name example-app firebase-emulators
