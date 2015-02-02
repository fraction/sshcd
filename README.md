# sshcd

Tired of having to type this janky command to [ssh](http://manpages.ubuntu.com/manpages/saucy/en/man1/ssh.1.html) and [cd](http://manpages.ubuntu.com/manpages/saucy/en/man1/cd.1posix.html) into unfamiliar remote servers?

```sh
ssh -t user@fraction.io "cd /foo/bar; exec \$SHELL --login"
```

Stop it. Connect with SSH and cd (change directory) with one command.

```sh
sshcd user@fraction.io:/foo/bar
```

## Installation

Use Homebrew to download and install the executable.

```sh
brew tap fraction/homebrew-formulae
brew install sshcd
```

Add the executable into your path and give it permissions.

```sh
sudo curl -Lo /usr/local/bin/sshcd http://git.io/wfAXEQ
sudo chmod +x /usr/local/bin/sshcd
```

## Usage

The default usage is pretty simple.

```sh
sshcd user@fraction.io:/foo/bar
```

The tool supports prepended flags, too!

```sh
sshcd -v user@fraction.io:/foo/bar
```
## Support

Please [open an issue](https://github.com/fraction/sshcd/issues/new) for questions and concerns.

## Contributing

Fork the project, commit your changes, and [open a pull request](https://github.com/fraction/sshcd/compare/).
