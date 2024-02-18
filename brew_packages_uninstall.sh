#!/bin/bash

brew list | gum choose --no-limit | xargs brew uninstall
