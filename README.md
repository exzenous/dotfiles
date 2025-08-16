🐧 Linux
---

#### Shell Experiences

|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> `zsh` | Lovely, Simple Shell Experience | n/a
<input type="checkbox"> `antinode` | `zsh` Plugin Manager | n/a
<input type="checkbox"> `starship` | Cross-Shell Prompt | n/a
<input type="checkbox"> `fish` | OK but meh that it's non-POSIX Compliant Shell Experience | n/a
<input type="checkbox"> `fisher` | `fish` Enhancement | n/a
<input type="checkbox"> `fzf` | fuzzy finder (boxed ctrl+r) ; install via script | n/a
<input type="checkbox"> `build-essential` | Only on Debian-based Linux | n/a
<input type="checkbox"> `make` `automake` `gcc` `gcc-c++` `kernel-devel` | `build-essential` for Fedora (RPM-based) | n/a
<input type="checkbox"> `brew` | brew.sh | n/a
<input type="checkbox"> `distillery` | like homebrew but with less fizz | n/a

#### Programming & Tools
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> `python` | Python | n/a
<input type="checkbox"> `nvm` | JavaScript/Node Version Manager | n/a
<input type="checkbox"> `go` | Go | n/a
<input type="checkbox"> `neovim` | Neovim Editor | n/a
<input type="checkbox"> `lazyvim` | Complete `neovim` Setup | n/a
<input type="checkbox"> `asdf` | Version Manager | n/a
<input type="checkbox"> `docker` `podman` | Container | n/a

#### I use arch, btw..

|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> `paru` | AUR Helper | n/a
<input type="checkbox"> `shadow` | newuidmap: Could not set caps Fix | n/a

#### Infrastructure
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> `aws` | AWS CLI | n/a
<input type="checkbox"> `az` | Azure CLI | n/a
<input type="checkbox"> `gcloud` | Google Cloud CLI | n/a
<input type="checkbox"> `terraform` | (IaC) Terraform CLI | 1.5.7
<input type="checkbox"> `terragrunt` | (IaC) Terraform Wrapper | n/a

#### Kubernetes
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> `kubectl` | Kubernetes Client CLI | n/a
<input type="checkbox"> `helm` | Helm for Kubernetes CLI | n/a
<input type="checkbox"> `kubectx` `kubens` | Quickly change `kubectl` contexts, namespaces| n/a
<input type="checkbox"> `k9s` | fancy TUI `kubectl` | n/a
<input type="checkbox"> `krew` | `kubectl` Plugins Manager | n/a

#### Special Tools
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> `vault` | HashiCorp Vault CLI | n/a

🐧🖥️ Full Linux Desktop
---

#### Desktop Experiences

|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> `sway` | Titling Windows Manager | n/a
<input type="checkbox"> `waybar` `dmenu` `foot` | Sway Extensions | n/a
<input type="checkbox"> `terminator` | minimal terminal | n/a
<input type="checkbox"> `xfce-terminal` | minimal terminal from Xfce DM | n/a
<input type="checkbox"> `xf86-input-vmmouse` | For VMs; Missing Mouse Cursor fix | n/a

🚩 WINDOWS\Lxss (Windows Subsystem for Linux/WSL)
---

#### `/etc/wsl.conf` Configurations
```
# Enable systemd
[boot]
systemd=true

[interop]
appendWindowsPath = false

[user]
default=username

```

#### Time unsync-ed between WSL and Windows Problem
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

🚩 WINDOWS\PowerShell
----

#### Package Managers
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> `choco` | Chocolatey ; HEAVY tools | n/a
<input type="checkbox"> `scoop` | small tools | n/a

#### Enhancements
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> `gsudo` | ~~PowerShell Administrator Priviledge Elevation~~ (Replaced with `sudo` on Windows 11 24H2 or later) | n/a
<input type="checkbox"> `PsFzf` | fuzzy finder (boxed ctrl+r) for PowerShell | n/a

#### Programming & Tools
|Tool|Description/Additional Notes|Specific Version|
--|--|--
<input type="checkbox"> dotnet | Installed via Visual Studio Installer | n/a
