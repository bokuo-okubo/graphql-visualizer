#!/bin/sh

DEFAULT_INPUT_FILENAME='/input/schema.graphql'
DEFAULT_OUTPUT_FILENAME='/output/schema.png'

if [ ! -e $DEFAULT_INPUT_FILENAME ]; then
  echo "error: no input file!"
  exit 1
fi

if [ -e $DEFAULT_OUTPUT_FILENAME ]; then
  rm -rf $DEFAULT_OUTPUT_FILENAME
fi

graphqlviz $DEFAULT_INPUT_FILENAME | dot -Tpng -o $DEFAULT_OUTPUT_FILENAME
