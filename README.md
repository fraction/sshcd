# sshcd

Tired of having to cd around after you've SSH'd into a server? Me too.

![](http://i.imgur.com/rLvUvxU.png?1)

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
