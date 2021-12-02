#!/bin/bash

echo "Installing Certinfo"

# Get latest release

VERSION=$(curl --silent "https://api.github.com/repos/pete911/certinfo/releases/latest" | grep -Po '"tag_name": "v\K.*?(?=")')

# Download installation archive.

URL="https://github.com/pete911/certinfo/releases/download/v${VERSION}/certinfo_${VERSION}_linux_amd64.tar.gz"

curl -L --connect-timeout 15 --retry 5 "$URL" > "${HOME}/certinfo.tgz"
tar -xvf "${HOME}/certinfo.tgz" certinfo

if [ $? -ne 0 ]; then
  echo -e "::error::Download failed!"
  exit 1
fi

rm "${HOME}/certinfo.tgz"
mv certinfo ${RUNNER_TOOL_CACHE}

# Report success, and print version.
echo -e "Successfully installed Certinfo:"
${RUNNER_TOOL_CACHE}/certinfo -version