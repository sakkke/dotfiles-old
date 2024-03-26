# dotfiles

## Install

### Linux

```sh
git clone https://github.com/sakkke/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

### Windows

Run as administrator.

```powershell
git clone https://github.com/sakkke/dotfiles.git "$env:USERPROFILE\dotfiles"
cd "$env:USERPROFILE\dotfiles"
.\Install-Profiles.ps1
```

## Post-install

### Alpine Linux

```sh
cd ~/.dotfiles/scripts/alpine/packages
sudo ./install.sh
```

## License

[MIT](./LICENSE)
