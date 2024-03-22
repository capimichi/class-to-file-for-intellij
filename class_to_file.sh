#!/bin/bash

# Source file
SOURCE_PATH=$1
SOURCE_DIR=$(dirname "$SOURCE_PATH")
EXTENSION=$(echo "$SOURCE_PATH" | grep -o '\.[^.]*$')

# Second argument will be the class content
CONTENT=$2

# Check if the directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Directory $SOURCE_DIR does not exist"
  exit 1
fi

ORIGINAL_CONTENT=$CONTENT

# Replace special characters with spaces
CONTENT=$(echo "$CONTENT" | sed 's/[^[:alnum:]]/ /g')

CLASS_NAME=""
CLASS_KEYWORD=0
for WORD in $CONTENT; do

  # If CLASS_KEYWORD is set, and CLASS_NAME is not set
  if [ $CLASS_KEYWORD -eq 1 ] && [ -z "$CLASS_NAME" ]; then
    CLASS_NAME=$WORD
    CLASS_KEYWORD=0
  fi

  # Check if the word is a class keyword
  if [ "$WORD" == "class" ]; then
    CLASS_KEYWORD=1
  fi
done

OUTPUT_NAME="$CLASS_NAME$EXTENSION"
OUTPUT_PATH="$SOURCE_DIR/$OUTPUT_NAME"

# If already exists, exit
if [ -f "$OUTPUT_PATH" ]; then
  echo "File $OUTPUT_PATH already exists"
  exit 1
fi

echo "$ORIGINAL_CONTENT" > "$OUTPUT_PATH"