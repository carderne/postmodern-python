#!/bin/bash

# Check if the new name is provided
if [ -z "$1" ]; then
  echo "Error: No new name provided."
  echo "Usage: $0 <new-name>"
  echo
  echo "You can also provide a second argument as the current name:"
  echo "Usage: $0 <new-name> <current-name>"
  exit 1
fi

OLD_NAME=${2:-postmodern}
NEW_NAME=$1

# Rename the directory
if [ -d "$OLD_NAME" ]; then
  mv "$OLD_NAME" "$NEW_NAME"
else
  echo "Error: Directory '$OLD_NAME' does not exist."
  exit 1
fi

# Find and replace all instances
if [[ "$OSTYPE" == "darwin"* ]]; then
  grep -rl --exclude="rename.sh" "$OLD_NAME" * | xargs sed -i '' "s/$OLD_NAME/$NEW_NAME/g"
else
  grep -rl --exclude="rename.sh" "$OLD_NAME" * | xargs sed -i "s/$OLD_NAME/$NEW_NAME/g"
fi

read -p "Do you want to delete this script? (y/n): " DELETE_SCRIPT
if [ "$DELETE_SCRIPT" == "y" ]; then
  rm -- "$0"
fi

echo "Renamed project from '$OLD_NAME' to '$NEW_NAME'!"
