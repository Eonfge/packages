#!/usr/bin/env bash

ID=com.github.flacon

set -e

flatpak-builder --repo=.flatpak-repo --force-clean .flatpak-build ${ID}.yaml
flatpak build-bundle .flatpak-repo Flacon.flatpak ${ID}
