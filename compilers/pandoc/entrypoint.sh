#!/bin/sh

set -e

warn() {
  echo "::warning :: $1"
}

error() {
  echo "::error :: $1"
  exit 1
}

root_file="$1"
working_directory="$2"
args="$3"
extra_system_packages="$4"
changed_files="$5"

if [ -z "$root_file" ] && [ -z "$changed_files" ]; then
  error "Input 'root_file' or 'changed_files' is missing."
fi

if [ -n "$extra_system_packages" ]; then
  for pkg in $extra_system_packages; do
    echo "Install $pkg by apk"
    apk --no-cache add "$pkg"
  done
fi

if [ -z "$args" ]; then
  warn "Input 'args' is empty. Resetting to default value."
  args="-s"
fi

if [ -n "$working_directory" ]; then
  cd "$working_directory"
fi

# shellcheck disable=SC2086
if [ -n "$root_file" ]; 
  then
    echo "Running root_file $root_file"
    pandoc $args $root_file -o main.md
  else
    echo "Running changed_files: $changed_files"
    while IFS='' read -r LINE || [ -n "${LINE}" ]; do
      echo "processing line: ${LINE}"
      cd "$(dirname "${LINE}")";
      pandoc $args "$(basename ${LINE})" -o main.md;
      cd -
    done < $changed_files
fi
