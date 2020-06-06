# Graphql Visualizer

A toolset for visualize graphql schema with https://github.com/sheerun/graphqlviz

## Usage

```console
docker run --rm -tv "{your input dir}:/input" -v "{your output dir}:/output" bko712/graphql-visualizer:latestt

ex.
docker run --rm -tv "$(pwd)/example/input:/input" -v "$(pwd)/example/output:/output" bko712/graphql-visualizer:latest
```
