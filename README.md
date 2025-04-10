Linux
---

#### Shell Experience

|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> zsh | n/a | n/a
<input type="checkbox"> fish | n/a | n/a
<input type="checkbox"> fisher | n/a | n/a
<input type="checkbox"> antinode | `zsh` Plugin Manager | n/a
<input type="checkbox"> oh-my-zsh | "EZ" `zsh` customizer | n/a
<input type="checkbox"> fzf | fuzzy finder (boxed ctrl+r) ; install via script | n/a

#### Programming & Tools
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> python | n/a | n/a
<input type="checkbox"> nvm/npm/node | n/a | n/a
<input type="checkbox"> dotnet | n/a | n/a
<input type="checkbox"> go | n/a | n/a
<input type="checkbox"> neovim | Neovim | n/a
<input type="checkbox"> lazyvim | Extends Neovim | n/a

#### Infrasture
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> aws | aws-cli | n/a
<input type="checkbox"> az | azure-cli | n/a
<input type="checkbox"> gcloud | gcloud-cli | n/a

#### Kubernetes
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> kubectl | n/a | n/a
<input type="checkbox"> helm | n/a | n/a
<input type="checkbox"> kubectx/kubens | Quickly change kubectl contexts, namespaces| n/a
<input type="checkbox"> k9s | fancy kubectl | n/a
<input type="checkbox"> krew | kubectl Plugins Manager | n/a

#### Special Tools
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> terraform | Terraform Cli (IaC) | 1.5.7
<input type="checkbox"> terragrunt | Terraform Wrapper (IaC) | n/a
<input type="checkbox"> vault | HashiCorp Vault Cli | n/a

Full Linux Desktop
---

#### Shell Experience

|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> sway | Titling Windows Manager | n/a
<input type="checkbox"> Sway Extensions | `waybar`, `dmenu`, `foot` | n/a
<input type="checkbox"> terminator | minimal terminal | n/a
<input type="checkbox"> xf86-input-vmmouse | For VMs; Missing Mouse Cursor fix | n/a
<input type="checkbox"> build-essential | (Fedora; `make` `automake` `gcc` `gcc-c++` `kernel-devel`) | n/a

#### I use arch, btw..

|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> paru | AUR Helper | n/a

Windows Subsystem Linux (WSL)
---

#### `/etc/wsl.conf`
```
# Enable systemd
[boot]
systemd=true

[interop]
appendWindowsPath = false

[user]
default=username

```

#### Install systemd-timesync (same as above)
- Courtesy of https://unix.stackexchange.com/a/737366/547670
```
sudo apt install systemd-timesyncd
sudo systemctl edit systemd-timesyncd.service
```

```
### sudo systemctl edit systemd-timesyncd.service ###

[Unit]
ConditionVirtualization=
ConditionVirtualization=wsl
```
```
sudo systemctl start systemd-timesyncd
```

Windows PowerShell
----

#### Package Managers
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> choco | Chocolatey ; heavy tools | n/a
<input type="checkbox"> scoop | small tools | n/a

#### Enhancements
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> gsudo | PowerShell Administrator Priviledge Elevation | n/a
<input type="checkbox"> oh-my-posh | Shell Experience | n/a

#### Notes
`gsudo` has a PowerShell module that adds `gsudo !!` to elevate the last command.
Use the module by running: 'Import-Module gsudoModule'.
Add it to your $PROFILE to make it permanent.
