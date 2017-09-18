# Personal System Config

Maintained through Ansible for fun.

WARNING: First-run may be destructive and wipe out your  `~/.bash_profile` or
other system config. Make backup first if that isn't desired.

## First-Run (bootstrap)

  1. Get the RAW_URL with authentication token for the first run by clicking
    [HERE][raw_script] and copying the redirected url in the address bar with
    authentication token appended:

  2. Run the script, replacing RAW_URL with actual URL:

    $ curl -fsSL "RAW_URL" | bash

NB: During the first-run bootstrap you will be guided to configure a SSH key
for your system and add it to Github if you have not already done so.


## Keeping your system up to date

Once installed, you can keep your system up to date using the "update" script
installed in your `$PATH`.

    $ update


## Developing

    $ cd ~/.config.d
    $ git pull
    $ make changes
    $ ./bin/update

You can symlink `~/.config.d` to another directory if you usually keep your
code elsewhere.

### Developing bin/bootstrap

Work with a disposable `~/.config.d`, no amendments. Clone this repo to another
directory.

    $ rm -rf ~/.config.d
    $ cd ~/Documents/
    $ git clone git@github.com:mendable/config.git
    $ cd config
    $ vi bin/bootstrap
    $ bin/bootstrap


[raw_script]: https://github.com//mendable/config/raw/master/bin/bootstrap
