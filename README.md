# sshcd

Tired of having to type this janky command to [ssh](http://manpages.ubuntu.com/manpages/saucy/en/man1/ssh.1.html) and [cd](http://manpages.ubuntu.com/manpages/saucy/en/man1/cd.1posix.html) into unfamiliar remote servers?

```sh
ssh -t user@fraction.io "cd /foo/bar; exec \$SHELL"
```

Stop it. Connect with SSH and cd (change directory) with one command.

```sh
sshcd user@fraction.io:/foo/bar
```

## Installation

The recommended OS X installation method is with [Homebrew](http://brew.sh/).

```sh
brew tap fraction/homebrew-formulae
brew install sshcd
```

Alternatively, you can install it with Git.

```sh
git clone https://github.com/fraction/sshcd
sudo make -C sshcd install PREFIX=/usr/local
```

Don't want to use Git? You can also use wget.

```sh
wget https://github.com/fraction/sshcd/archive/v1.0.2.tar.gz
tar --get --gzip < v1.0.2.tar.gz
sudo make -C sshcd-1.0.2 install PREFIX=/usr/local
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
