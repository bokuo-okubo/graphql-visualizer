build:
	docker build -t bko712/graphql-visualizer:latest .
test:
	docker run --rm -tv "$$(pwd)/example/input:/input" -v "$$(pwd)/example/output:/output" bko712/graphql-visualizer:latest
