#!/usr/bin/env bash

ID=com.github.flacon

set -e

flatpak-builder --repo=repo --force-clean _build ${ID}.yaml
flatpak build-bundle repo flacon.flatpak ${ID}
