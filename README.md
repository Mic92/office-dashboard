# Office dashboard

based on [smashing](https://github.com/Smashing/smashing)

Accessible from university network under: http://dashboard.thalheim.io:3030/sample

Hardware: [rock64](https://www.pine64.org/?page_id=7147)

Software:
  - Operating system: [nixos](https://nixos.org/)
  - Configuration: https://github.com/Mic92/dotfiles/blob/master/nixos/vms/rock.nix

## ssh

```console
$ ssh chris@dashboard.thalheim.io
```

## Dashboard is currently running on my tmux session (very professional... :()

```
$ sudo -u joerg tmux attach
$ joerg> ls -la /home/joerg/office-dashboard
total 72
drwxr-xr-x  8 joerg users 4096 Sep 23 18:51 .
drwx------ 14 joerg users 4096 Oct  4 18:56 ..
drwxr-xr-x  6 joerg users 4096 Sep  2 18:25 assets
-rw-r--r--  1 joerg users  508 Sep  2 18:25 config.ru
drwxr-xr-x  2 joerg users 4096 Sep  2 18:25 dashboards
-rw-r--r--  1 joerg users  856 Sep  6 11:49 default.nix
-rw-r--r--  1 joerg users   74 Sep  2 18:25 Gemfile
-rw-r--r--  1 joerg users 1934 Sep  2 18:25 Gemfile.lock
-rw-r--r--  1 joerg users 7393 Sep  2 18:25 gemset.nix
drwxr-xr-x  8 joerg users 4096 Sep 23 19:06 .git
-rw-r--r--  1 joerg users 1085 Sep  2 18:25 .gitignore
-rw-r--r--  1 joerg users 2424 Sep 23 18:51 history.yml
drwxr-xr-x  2 joerg users 4096 Sep 23 18:51 jobs
drwxr-xr-x  2 joerg users 4096 Sep  2 18:25 public
-rw-r--r--  1 joerg users  133 Sep  2 18:25 README.md
-rwxr-xr-x  1 joerg users  547 Sep  2 18:25 update-code.py
drwxr-xr-x 14 joerg users 4096 Sep  2 18:25 widgets
$joerg> cd /home/joerg/office-dashboard
$joerg> nix-shell --command "bundle exec smashing start" 
Thin web server (v1.7.2 codename Bachmanity)
Maximum connections set to 1024
Listening on 0.0.0.0:3030, CTRL+C to stop
```

## Update office drinks

```console
$ curl -d '{ "time": "2018-09-12 18:30:00" }' http://dashboard.thalheim.io:3030/widgets/drunks
```

## Update code of the day

```console
$ curl -d '{ "snippet": "some fancy language" }' http://dashboard.thalheim.io:3030/widgets/code
```

or use 

```python
$ python3 update-code.py <some-file>
```
