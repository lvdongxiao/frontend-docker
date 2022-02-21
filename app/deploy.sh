#!/bin/bash
repo="your git repo"
dir=releases/$(date +%Y%m%d%H%M%S)

makefile() {
  path=$1
  mf_path="$path"/makefile
  cp -f makefile.in "$mf_path"

  if [ "$2" == "dev" ]; then
    build="build-develop"
  else
    build="build"
  fi
  sed -i "s/%build%/$build/g" "$mf_path"

  return 0
}

# git
git clone "$repo" "$dir" || exit 1

case $1 in
  'dev')
    makefile "$dir" dev
    ;;
  *)
    makefile "$dir" prod
    ;;
esac

(cd "$dir" || exit;make)
(rm -rf current && ln -sf "$dir" current)
