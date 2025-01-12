#!/bin/bash

local_arch="amd64"
local_os="linux"

if [[ "$(uname -m)" == "x86_64" ]]; then
  local_arch="amd64"
fi

if [[ "$(uname -m)" == "aarch64" ]]; then
  local_arch="arm64"
fi

if [[ "$(uname)" == "Darwin" ]]; then
  local_os="darwin"
fi

echo "${local_os}_${local_arch}"
