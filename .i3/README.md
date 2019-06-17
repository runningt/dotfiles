## i3 wm config
This is latest i3wm configuration file for my thinkpad.

### Config files
- `config` is general i3 config and should be linked to  ~/.i3/config
- `i3blocks.conf` should be linked to `~/.i3blocks.conf` and used if i3blocks is used as status_command
- `i3status.conf` should be linked to `~/.i3status.conf` used if i3status is used as status_command

### Requirements

#### volume widget
- pulseaudio
- pulseaudio-ctl

#### mediaplayer widget
- playerctl

#### weather widget
- python3
- pyowm python lib (`pip install pyowm`)a
- open weather map API Key (get it [here](https://openweathermap.org/appid))

### Makefile
- `make i3` to link `.i3/config`
- `make i3status` to link `.i3status.conf`
- `make i3blocks` to link `.i3blocks.conf`



