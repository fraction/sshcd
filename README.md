# sshcd

Tired of having to type this janky command to [ssh](http://manpages.ubuntu.com/manpages/saucy/en/man1/ssh.1.html) and [cd](http://manpages.ubuntu.com/manpages/saucy/en/man1/cd.1posix.html) into unfamiliar remote servers?

```sh
$ ssh -t user@pretend.io "cd /over/the/rainbow; exec \$SHELL"
```

Me too.

```sh
$ sshcd user@pretend.io:/over/the/rainbow
```

## installation

```sh
git clone https://github.com/christianbundy/sshcd.git && cd sshcd
sudo cp sshcd /usr/local/bin
```

## usage

The default usage is pretty simple.

```sh
sshcd root@example.com:/your/favorite/folder
```

It supports prepended flags, too!

```sh
sshcd -v root@example.com:/lets/get/verbose
```
