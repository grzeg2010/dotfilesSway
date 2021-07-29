# TTY theme (dracula)
#if [ "$TERM" = "linux" ]; then
#	printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
#	printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
#	printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
#	printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
#	printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
#	printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
#	printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
#	printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
#	printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
#	printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
#	printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
#	printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
#	printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
#	printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
#	printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
#	printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
#	printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
#	printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
#	clear
#fi

#toilet -f term -F border "$(uname -r)" "   " "$(date +'%a %d/%m/%Y %H:%M:%S')"
if [ "$(tty)" = "/dev/tty1" ]; then
  /home/typsz/.config/PigeonStats/diskspace.sh # Z FalconStats (https://github.com/Heholord/FalconStats)
  echo
  /home/typsz/.config/PigeonStats/usage.sh
  echo
  /home/typsz/.config/PigeonStats/temperature.sh --oneline
  echo
  echo
  /home/typsz/.config/PigeonStats/battery.sh
  echo
  /home/typsz/.config/PigeonStats/since.sh
  echo
fi

# Set nvim as the default editor
export EDITOR='nvim'

# bemenu theme (dracula)
export BEMENU_OPTS="--tb '#6272a4'\
 --tf '#f8f8f2'\
 --fb '#282a36'\
 --ff '#f8f8f2'\
 --nb '#282a36'\
 --nf '#6272a4'\
 --hb '#44475a'\
 --hf '#50fa7b'\
 --sb '#44475a'\
 --sf '#50fa7b'\
 --scb '#282a36'\
 --scf '#ff79c6'"

alias gitgraph="git log --all --oneline --decorate --graph"
alias sasscop="sass --no-source-map custom.scss custom.css && wl-copy < custom.css"
