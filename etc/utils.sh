#!/usr/bin/env bash

function warn() {
  echo -e "\e[33mWarn:\e[m $* 😱"
}

function fail() {
  echo -e "\e[31mFail:\e[m $* 😭"
  exit 1
}
