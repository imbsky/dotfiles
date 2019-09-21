#!/usr/bin/env bash

function warn() {
  echo -e "\e[33mWarn:\e[m $* 😱"
}

function fail() {
  echo -e "\e[31mFail:\e[m $* 😭"
  exit 1
}

function is_macos() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    true
  elif [[ "$OSTYPE" == "linux"* ]]; then
    false
  else
    fail "Unsupported platform..."
  fi
}
