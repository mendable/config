# Personal System Config

Base system config maintained through Ansible.

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
installed in your $PATH.

    $ update


## Developing

### First Run

Work with a disposable `~/.config.d`, no amendments.

    $ rm -rf ~/.config.d
    $ vi bin/bootstrap
    $ bin/bootstrap

[raw_script]: https://github.com//mendable/config/raw/master/bin/bootstrap
