# vscodeconfig

Template and basic installer for my VS Code config files and plugins.

## Usage

Create `.env` and fill in:

```
# https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations
OUTPUT="$HOME/Library/Application Support/Code/User"
```

Then run `sh install.sh` to template out the config into the right location.

_Note that this is a dumb installer - back up existing config first_
