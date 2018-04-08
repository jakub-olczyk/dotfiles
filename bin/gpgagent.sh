#!/usr/bin/env bash
gpg-agent --homedir /home/jwo/mnt/.gnupg/ --daemon
echo "$GPG_AGENT_INFO"
export GPG_AGENT_INFO
