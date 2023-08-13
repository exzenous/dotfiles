Linux
----
zsh

antinode/oh-my-zsh

fzf: install via script

kubectl

helm

kubectx/kubens

k9s

kubectl krew

ansible

terraform

terragrunt

vault

python

nvm/npm/node

dotnet

gcloud

aws-cli

azure-cli

/etc/wsl.conf (same as above)

```
[boot]
systemd=true

[interop]
appendWindowsPath = false
```

Install systemd-timesync (same as above)

`sudo apt install systemd-timesyncd`

The suggested edits for timesyncd did NOT work for me and resulted in failure to start the service. Instead I did the following:

sudo systemctl edit systemd-timesyncd.service

```
[Unit]
ConditionVirtualization=
ConditionVirtualization=wsl
```

Courtesy of https://unix.stackexchange.com/a/737366/547670

And start it (same as above)

`sudo systemctl start systemd-timesyncd`

Windows PowerShell
----
choco

scoop

- gsudo
- oh-my-posh

Notes
-----
gsudo has a PowerShell module that adds `gsudo !!` to elevate the last command.
Use the module by running: 'Import-Module gsudoModule'.
Add it to your $PROFILE to make it permanent.
