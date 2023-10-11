#!/bin/bash

##
## BASIC CONFIGURATION
#   ------------------------------------------------------------
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export LC_CTYPE="en_UK.UTF-8"
export LC_ALL="en_UK.UTF-8"

# Enable Auto completion
npm completion >> ~/.bashrc

# npm global configs
npm config set save-exact true
npm config set engine-strict true
npm config set ignore-scripts

# spotlight re-index
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

##
## nvm
#   ------------------------------------------------------------
# node version(s) active on this computer
# install nvm: 'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash'
alias nvm_version=" nvm ls "

# JAVA_HOME set
#   ------------------------------------------------------------
# export JAVA_HOME=" $(/Library/Java/JavaVirtualMachines/jdk1.7.0_75.jdk/Contents/Home/bin) "
alias java_jre=" /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java "

##
## BASIC npm COMMANDS
#   ------------------------------------------------------------
# List packages in cache
alias n-ls=" npm cache ls "

# Clean npm cache
# clean: Delete all data out of the cache folder
# verify: Garbage collecting any unneeded data
alias n-clean=" npm cache clean -f && clean cache verify"

# runs a set of checks to ensure that your npm installation
alias n-doc=" npm doctor "

# Check for outdated packages in local
alias n-check=" npm outdated "

# Check for outdated packages in Global
alias n-check-g=" npm outdated -g "

# Check for outdated packages in Production only
alias n-check-p=" npm outdated --prod "

# List installed packages: Local with tree
alias n-ls=" npm ls "

# List installed packages: only parents
alias n-ld0=" npm ls --depth=0 "

# List installed packages: Global - only parent
alias n-lgd0=" npm ls -g --depth=0 "

# List installed packages: List production packages only
alias n-lp=" npm ls --prod "

# Remove un-used packages from node_modules folder
alias n-prune=" npm prune "

# Remove all devDependencies from node_modules
alias n-prune-p=" npm prune --production "

# Update all packages listed in package.json
alias n-up=" npm update "

# Remove duplicate packages from node_modules
alias n-rm-dupli" npm dedupe "

# Lockdown package versions for production
alias n-lock=" npm shrinkwrap "

# Lockdown package versions for productiona ans also include devDependencies
alias n-lock-dev=" npm shrinkwrap --dev "

# Run npm in production (will not download devDependencies)
alias n-prod=" npm install --only=production "

# install dependency specific version
alias n-pick=" npm install -g npm@3.2.1 "

# list available scripts
alias n-run=" npm run "

# updating and checking for outdated stuff
alias n-audit=" npm audit "

# turn off Security vulnerabilities found with suggested updates
alias n-no-audit=" npm set audit false "

# Security vulnerabilities found with suggested updates
alias n-audit-fix=" npm audit fix "

# list npm configuration files
alias n-config-ls=" npm config list -l "

# Opens the config file in an editor
alias n-config-edit=" npm config edit "

# Opens the global config file in an editor
alias n-config-edit-g=" npm config edit --global"

##
## SAP utilities
#   ------------------------------------------------------------
##
# Angular version
alias angular=' ng v | grep "Angular CLI:" '

# react version
alias react=" npm view react-dom version "

# vue version
alias vue=" npm list --depth=0 | grep vue "

##
## MAC commands
#   ------------------------------------------------------------
alias showExt=" defaults write NSGlobalDomain AppleShowAllExtensions -bool true "
alias hideAll=" defaults write com.apple.finder AppleShowAllFiles true "
alias showPath=" defaults write com.apple.finder _FXShowPosixPathInTitle -bool true "
alias showLIbrary=" chflags nohidden ~/Library "

alias setBootVolume=" bless --mount "/path/to/mounted/volume" --setBoot "

# MAC utilities via terminal
alias showAll=" diskutil list "

# MAC verify permissions
alias mac-verify=" diskutil verifyPermissions / "

# MAC repair disk
alias mac-disk=" diskutil repairDisk / "

# MAC repair permissions
alias mac-repair=" diskutil repairPermissions / "

# MAC Verify and Repair Volume
alias mac-verify-repair=" diskutil verifyVolume / "

# MAC update
alias mac-update=" softwareupdate -l "

# MAC Time Machine on / off
alias mac-backup-on=" sudo tmutil enable "

# MAC Time Machine on / off
alias mac-backup-off=" sudo tmutil disable "

# MAC run a Time Machine backup
alias mac-backup-off=" tmutil startbackup "

# MAC stop a Time Machine backup
alias mac-backup-off=" tmutil stopbackup "

# hide folder
alias hideFolder=" chflags hidden /path/to/folder/ "

# clear fonts and make more available space
alias clearFontCache="
																						atsutil databases -removeUser && \
# System Video Resolution: Resolution: 1440 x 900 (Widescreen eXtended Graphics Array Plus)
alias macScreen=" system_profiler SPDisplaysDataType | grep Resolution "

alias lock=" /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend "
alias bell=" tput bel "

# show hidden files
alias show_all=" defaults write com.apple.finder AppleShowAllFiles TRUE && killall Dock "

# temporally show hidden files
alias l.=" ls -d .* --color=auto "

# hide hidden files
alias hide_all=" defaults write com.apple.finder ShowAllFiles FALSE  && killall Dock "
alias notification_center=" launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist killall NotificationCenter "

# Converting Image File Formats:
# 'sips -s format [image type] [file name] --out [output file]'
alias convert=" sips -s format "

# Converting several images format:
# 'for i in [filename]; do sips -s format [image type] $i --out [destination]/$i.[extension];done'
alias convert-all=" for i in *.jpeg; do sips -s format png $i --out Converted/$i.png;done "

# Searching for Files: 'mdfind -name "README.md"'
alias find=" mdfind -name "

# Get Current Transmission Unit (MTU) size
alias mtu=" networksetup -getMTU en1 "

# View File System Usage on mac
alias mtu=" sudo fs_usage "

# prevent mac from sleeping
alias coffe=" caffeinate "
alias coffe600=" caffeinate -u -t 600 "

##
## root commands
#   ------------------------------------------------------------
alias rootMode=" dsenableroot "
alias su=" sudo su "
# shutdown
alias shutdown=" sudo shutdown -h now "
# restart
alias restart=" osascript -e 'tell app "System Events" to restart' "

##
## MAC diagnosis commands
#   ------------------------------------------------------------
alias macScan=" sudo sysdiagnose -f ~/Desktop/ "

# List All Network Hardware on a Mac via Command Line
alias macInfo=" networksetup -listallhardwareports "
alias showOSX=" sw_vers "
alias macCore=" sysctl -n machdep.cpu.brand_string "

# Wakeup sleeping servers (replace mac with your actual server mac address)
alias wakeupnas01=" /usr/bin/wakeonlan 00:11:32:11:15:FC "

##
## Printer
#   ------------------------------------------------------------
alias dontSleep=" caffeinate -u -t 3600 "
alias goSleep=" sudo pmset sleep 5 "
alias checkSleep=" sudo systemsetup -getcomputersleep "

##
## Audio
#   ------------------------------------------------------------
alias mute=" osascript -e 'set volume output muted true' "
alias noMute=" osascript -e 'set volume output muted false' "
alias audio1=" osascript -e 'set volume 1' "
alias audio2=" osascript -e 'set volume 2' "
alias audio3=" osascript -e 'set volume 3' "
alias audio4=" osascript -e 'set volume 4' "
alias audio5=" osascript -e 'set volume 5' "
alias audio6=" osascript -e 'set volume 6' "
alias audio7=" osascript -e 'set volume 7' "


##
## Printer
#   ------------------------------------------------------------
alias wifyPassword=" security find-generic-password -D 'AirPort network password' -a 'SSID' -gw "
alias wirelessScan=" airport -s "
alias clearPrinterQueue=" cancel -a - "


##
## DELETE
#   ------------------------------------------------------------
alias safeDel=" srm -r "
alias del=" rm -R "
alias delDist="  rm -Rfv dist || true "


##
## Disk Use Information
#   ------------------------------------------------------------
# disk use
alias d-use=" du -h * "

# displays disk usage information directory
alias d-use-ts=" du -sh * "

# displays disk usage information for each file and directory
alias d-use-file=" du -ck * | sort -rn | head -11 "

##
## Change Terminal Title
# ------------------------------------------------------------
echo -n -e "\033]0;LeoLaneseltd\007"

## Color definitions
COLOR_BROWN='\033[0;33m'      # Brown color
COLOR_GRAY='\033[0;37m'       # Gray color
COLOR_RESET='\033[0m'         # Reset color to default

## Display Kernel Information
echo -e "${COLOR_GRAY}Kernel Information: ${COLOR_RESET}" ; uname -smr

## Display Bash Version
echo -e "${COLOR_BROWN}Bash Version:${COLOR_RESET}"; bash --version

## Display Uptime
echo -ne "${COLOR_GRAY}Uptime: ${COLOR_RESET}"; uptime

## Display Server Time
echo -ne "${COLOR_GRAY}Server time is: ${COLOR_RESET}"; date



##
## dev LESS (lessc: npm install -g less) preprocessors
#   ------------------------------------------------------------
alias allwms="find ~/Sites/wi.mobile/Source/WI.Web/less/ -name '*.less' -exec lessc {} \; > ~/Sites/wi.mobile/Source/WI.Web/Css/combined.css;"


## instead doing this I can use Grunt: Compile LESS directly and copy into deployment CSS folder directory.
#   ------------------------------------------------------------
alias wms="lessc ~/Sites/wi.mobile/Source/WI.Web/less/accordion.less > ~/Sites/wi.mobile/Source/WI.Web/Css/accordion.css;
           lessc ~/Sites/wi.mobile/Source/WI.Web/less/emailcapture.less > ~/Sites/wi.mobile/Source/WI.Web/Css/emailcapture.css;
"

## dev port
## find all .less and combined them into 1 CSS.
#   ------------------------------------------------------------
alias allport=" find ~/Sites/ptf/less/ -name '*.less' -exec lessc {} \; > ~/Sites/ptf/css/combined.css; "

## dev curl
## cURL POST Request Command Line Syntax: curl [options] [URL...]
#   ------------------------------------------------------------
# curl post request with no data: curl -X POST http://URL/example.php
alias url=" curl -X POST "

# curl post request with data: curl -d "data=example1&data2=example2" http://URL/example.cgi
alias url=" curl -d "

# Get the HTTP Headers of a URL
alias url-header=" curl -I --http2 https://www.ubuntu.com/ "

# Test if a Website Supports HTTP/2: curl -I --http2 -s https://linuxize.com/ | grep HTTP
alias url-http=" curl -I --http2 -s https://linuxize.com/ | grep HTTP "

## instead doing this I can use Grunt: Compile LESS directly and copy into deployment CSS folder directory.
#   ------------------------------------------------------------
alias port="lessc ~/Sites/ptf/less/grid.less > ~/Sites/ptf/css/grid.css;
            lessc ~/Sites/ptf/less/mindex.less > ~/Sites/ptf/css/mindex.css;"


##
## dev rsyncs
#   ------------------------------------------------------------
alias sync="rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/js/ /Volumes/wi.mobile/js;
            rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/css/fonts/ /Volumes/wi.mobile/css/fonts;
"


##
## JOIN tools
#   ------------------------------------------------------------
alias texttofile=" say 'Your status has been updated to Urgent Assistance' "

##
## Shortcuts & directions. Improving the terminal for fast typers
#   ------------------------------------------------------------
alias  root=" cd ~/Documents/root "
alias  l=" ls -la"
alias  ls=" ls -aFhlG"
alias  ll=" ls -l "
alias  ls=" ls -GFh "
alias  search=" grep "

# Compare Contents of Two Directories with diff: diff -rq directory1 directory2
alias compare-folders=" diff -rq "

alias  h=" history "
alias  dh=" sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent' "
alias  ddh=" sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent' "
alias  used=" defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'; killall Dock "

alias  ..=" cd .. "
alias  ...=" cd ../.. "
alias  ....=" cd ../../.."
alias cd..='cd ../'                         # Go back 1  level
alias ..='cd ../'                           # Go back 1  level
alias ...='cd ../../'                       # Go back 2  levels
alias .3='cd ../../../'                     # Go back 3  levels
alias .4='cd ../../../../'                  # Go back 4  levels
alias .5='cd ../../../../../'               # Go back 5  levels
alias .6='cd ../../../../../../'            # Go back 6  levels
alias c='clear'
alias show_options=' shopt '
alias make1mb=' mkfile 1m ./1MB.dat '         # make1mb:      Creates a file of 1mb size (all zeros)
alias make5mb=' mkfile 5m ./5MB.dat '         # make5mb:      Creates a file of 5mb size (all zeros)
alias make10mb=' mkfile 10m ./10MB.dat '      # make10mb:     Creates a file of 10mb size (all zeros)




##
## automatic tasks manages shortcuts
#   ------------------------------------------------------------
alias bower_dependencies=" grunt bower-install-simple; bower update "


##
## GIT aliases
#   ------------------------------------------------------------
# remove folder committed and tracked by Git
alias cleanToBeCommited=" git rm -r --cached . "

# List remote branches
alias gr=" git branch -r "

# rebase master & subnmodules udpate
alias gsu='git submodule update'
alias rebase-master='git fetch origin master:master && git rebase master && gsu'

# revert last commit
alias undo-last-commit='git reset --soft HEAD^'

# Display all branches
alias ga=" git branch -a "

# Delete all local branches but master, develop and staging
alias gdp=' git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | grep -v "staging" | xargs -n 1 git branch -d '

# Remove All Local Branches not on Remote
alias gdp=" git branch -r | egrep -v -f /dev/fd/0  <(git branch -vv | grep origin) | xargs git branch -d "

# Delete All Non-Merged Git Branches
alias gdm="git branch --merged && git branch -d branch-name"

# Delete All Your Local Git Branches Except Master
alias gdp2=" git branch | grep -v "master" | xargs git branch -D  "

# Remote branches and last commit
alias g-remote-branches=" git for-each-ref --sort=-committerdate refs/remotes/origin --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))' "

alias g-change-to-push=" git diff --stat --patch origin master "

alias g-config=" cat .git/config "
alias g-end-sprint=" git branch | grep -v 'master' | xargs git branch -D "
alias g-merge=" git difftool "
alias g-branch=" git branch -a "
alias g-log1=" git log --graph --oneline --all --decorate --color "
alias g-log2=" git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short "
alias g-log3=" git log --pretty=oneline "
alias g-log4=" git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit "
alias g-wc=" git whatchanged -3 -p "
alias g-users=" git log --format='%aN' | sort -u "
alias g-diff=" git log -p "
alias g-s=" git status "
alias g-a=" git add "
alias g-b=" git branch "
alias g-c=" git commit "
alias g-d=" git diff "
alias g-o=" git checkout "

# git clean removes all untracked files and git checkout clears all unstayed changes.
alias g-cl=" git clean -df "

# quick push
alias g-qp=" git add . && git commit -m 'code improvement' && git push "

alias gk=" gitk --all& "
alias gx=" gitx --all & "
alias g-i=" git add -i "
alias g-me=" git log --author=LeoLanese "
alias g-remote=" git remote -v "
alias g-clean-DS=" find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch;
																					git config --global core.excludesfile ~/.gitignore;
																					echo .DS_Store >> ~/.gitignore "
alias g-all-users=' git log --format="%aN" | sort -u '
alias g-tasks=' grep --exclude-dir=.git -rEI "TODO|FIXME" . 2>/dev/null '

alias g-ignore=' find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitignore \; '
alias g-undelete=' git checkout $(git rev-list -n 1 HEAD -- "$file")^ -- "$file" '
alias g-idea=' git rm -r --cached .idea '
alias g-contributors=' git shortlog -sn '
alias g-name=' git config user.name '

# Revert All Local Changes
alias g-reverse=' git checkout . '

# Show changes
alias g-show=" git diff --staged "

# Modify The Most Recent Commit
alias g-commits=" git commit --amend "

# Interactively Add Selected Parts of Files
alias g-parts=" git add -p "

# Interactively Stash Selected Parts of Files
alias g-stash=" git stash -p "

# Stash out
alias g-pop=' git stash pop '

# Stash with untracked
alias g-tracks=' git stash -u '

# Interactively Revert Selected Parts of Files
alias g-revert=' git checkout -p '

# Switch to Previous Branch
alias g-switch=' git checkout - '

# Rename Branches Locally
alias g-rename=" git branch -m old-name new-name "

# Open All Files with Conflicts at Once
alias g-open=" git diff --name-only --diff-filter=U | uniq  | xargs $EDITOR "

# What changed in the last 2 weeks?
alias g-wassap='  git whatchanged —-since="2 weeks ago" '

# Optimize the repository locally
alias g-gc=" git gc --prune=now --aggressive "

# git anual & help
alias g-help=" git help workflows "

##
## ports
#   ------------------------------------------------------------
alias check_open_ports=" lsof -Pi | grep LISTEN "
alias check_port=" lsof -i :8888 "
alias check_establish=" lsof -i | grep -i estab "

##
## Watch Network Traffic
#   ------------------------------------------------------------
alias network=" nettop -m route "

##
## Swipe Navigation
#   ------------------------------------------------------------
# Disable Google Chrome’s Two-Finger Swipe Navigation
alias swipeOff=" defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE "
alias swipeOn=" defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool TRUE "

##
## aliases
#   ------------------------------------------------------------
# Ethernet Address
alias get_macaddress=" networksetup -getmacaddress Wi-Fi "

# public IP
alias ip=" curl -s http://wtfismyip.com/text "

# public IP
alias ip2=" curl l2.io/ip "

# header
alias header=" curl -I g.cn "
alias validate_json=' curl -s "https://jsonplaceholder.typicode.com/posts/1" | python -m json.tool | less -R '

# flushDNS:     Flush out the DNS Cache
alias flushDNS=" dscacheutil -flushcache "

# lsock:        Display open sockets
alias lsock=" sudo /usr/sbin/lsof -i -P "

# lsockU:       Display only open UDP sockets
alias lsockU=" sudo /usr/sbin/lsof -nP | grep UDP "

# lsockT:       Display only open TCP sockets
alias lsockT=" sudo /usr/sbin/lsof -nP | grep TCP "

# ipInfo0:      Get info on connections for en0
alias ipInfo0=" ipconfig getpacket en0 "

# ipInfo1:      Get info on connections for en1
alias ipInfo1=" ipconfig getpacket en1 "

# get mac Network IP Address
alias ipInfo2=" ipconfig getifaddr en0 "

# Get Your mac External IP Address
alias ipExtInfo=" curl ipecho.net/plain; echo "

# openPorts:    All listening connections
alias openPorts=" sudo lsof -i | grep LISTEN "

# showBlocked:  All ipfw rules inc/ blocked IPs
alias showBlocked=" sudo ipfw list "

# show-up effects in the console
alias crazy=" LC_ALL=C tr -c '[:digit:]' ' ' < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR='1;32' grep --color '[^ ]' "
alias matrix=" yes 'c=(" " "  " "   " 0 1); printf "${c[RANDOM%5]}"' | bash "


##
## aliases pouchDB and Futon (PouchDB UI)
#   ------------------------------------------------------------
alias db_alive=' curl http://127.0.0.1:5984/ | python -m json.tool '
alias db=' curl -X GET http://127.0.0.1:5984/_all_dbs | python -m json.tool '
alias db_put=' curl -X PUT http://127.0.0.1:5984/test | python -m json.tool '
alias db_delete=' curl -X DELETE http://127.0.0.1:5984/test '
alias db_insert=' curl -H "Content-Type: application/json" --data @tt.json http://127.0.0.1:5984/test '
alias db_restart=' curl -X POST http://localhost:5984/_restart -H 111 "Content-Type: application/json" '


##
## the "qp" alias ("que pasa")
#   ------------------------------------------------------------
alias qp=" ps auxwww "

##
## Python Server
#   ------------------------------------------------------------
# run a python server
alias server=" python -m SimpleHTTPServer 8888 "

# dump to :simple http server to dump request headers
alias dump=" curl -s -H 'X-Something: test' localhost:8888 > /dev/null "

##
## mongoDB
#   ------------------------------------------------------------
alias mon=" mongod --dbpath /Users/{user}/met/data/db --rest "

##
## fun
#   ------------------------------------------------------------
alias radio=" open http://kissfm.es/player/ "
alias radio2="  open http://drs1.radio.net/ "

# play all music files from the current directory
alias playwave=' for i in *.wav; do mplayer "$i"; done '
alias playogg=' for i in *.ogg; do mplayer "$i"; done '
alias playmp3=' for i in *.mp3; do mplayer "$i"; done '

##
## IT dev essential shortcuts
#   ------------------------------------------------------------
## BS3 components
alias bs3_1=" open http://getbootstrap.com/components/ "
alias bs3_2=" open https://mdbootstrap.com/components/ "
alias bs3_3=" open http://www.w3schools.com/bootstrap/bootstrap_grid_system.asp "
alias bs3_4=" open http://www.tutorialrepublic.com/twitter-bootstrap-tutorial/ "
alias bs3_5=" open https://www.w3schools.com/bootstrap/ "
alias bs3_6=" open https://www.tutorialspoint.com/bootstrap/index.htm "
alias bs4_1=" open https://www.codeply.com/go "


##
## BS3 grids
#   ------------------------------------------------------------
alias grid1=" open https://mdbootstrap.com/layout/layout-grid/ "
alias grid2=" open http://getbootstrap.com/examples/grid/ "
alias grid3=" open https://www.tutorialspoint.com/bootstrap/bootstrap_grid_system.htm "
alias grid4=" open http://www.w3schools.com/bootstrap/bootstrap_grid_system.asp "

##
## fonts/icons components
#   ------------------------------------------------------------
alias icons=" open http://fortawesome.github.io/Font-Awesome/cheatsheet/ "
alias icons2=" open https://design.google.com/icons/ "

##
## handy shotcuts to bookmark
#   ------------------------------------------------------------
alias caniuse=" open http://kangax.github.io/compat-table/es6/ "
alias json=" open https://jsonformatter.curiousconcept.com/ "
alias regexp=" open https://regex101.com/ "
alias images=" open http://placehold.it/150x350 "

##
## Your Personal projects
#   ------------------------------------------------------------
alias leo1=" open http://leolanese.com/"
alias leo2=" open https://twitter.com/leolaneseltd "
alias leo3=" open https://dev.to/leolanese "


## testing
#   ------------------------------------------------------------
alias ios6=" open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app "
alias ios5=" open /Applications/Xcode.app/Contents/Developer/Applications/iOS Simulator.app "
alias ios3=" open /Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone Simulator.app "
alias safari=" open -a safari http://localhost:9000/ "
alias chrome=" open -a '/Applications/Google Chrome.app' "
alias lynx=" lynx 'http://www.bbc.co.uk' "
alias run_casper=" casperjs /Users/llanese/Sites/tests/go.js http://www.bostonglobe.com/"



## CLI .bash_profile && .zprolife (zsn)
#   ------------------------------------------------------------
alias edit=" open -e ~/.bash_profile && open -e ~/.zprofile "
alias reload=" source ~/.bash_profile && source ~/.zprofile "


## web development, so I need to edit these non-owned files fairly often
#   ------------------------------------------------------------
alias edit_hosts="open -e /etc/hosts"
alias edit_httpd="open -e /etc/apache2/httpd.conf"
alias edit_php="open -e /etc/php.ini"
alias edit_vhosts="open -e /etc/apache2/extra/httpd-vhosts.conf"


# Git branch in prompt.
#   ------------------------------------------------------------
parse_git_branch() {
 while read -r branch; do
     [[ $branch = \** ]] && current_branch=${branch#* }
 done < <(git branch 2>/dev/null)

 [[ $current_branch ]] && printf ' [%s]' "$current_branch"
}


## Modify Bash Prompt, Enable colors, improve ls
#   ------------------------------------------------------------
## PS1 option 1
## export PS1="-->\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\$ "

## PS1 option 2
# Color prompt for git
reset=$(tput sgr0)
boldgreen=$(tput setaf 2)$(tput bold)
cyan=$(tput sgr0)$(tput setaf 6)
boldred=$(tput setaf 1)$(tput bold)
boldwhite=$(tput setaf 7)$(tput bold)
boldyellow=$(tput setaf 3)$(tput bold)

PARENCLR=$'\001\e[0;36m\002'
BRANCHCLR=$'\001\e[1;33m\002'

alias branchname=" git branch 2>/dev/null | sed -ne 's/^* \(.*\)/ ${PARENCLR}(${BRANCHCLR}\1${PARENCLR}\)/p' "

GIT_STATUS='$(branchname)'

PROMPT_CHAR="\$"
PS1="\[$boldgreen\]\u\[$cyan\]::\[$boldred\]\h \[$cyan\]{\[$boldwhite\].../\W\[$cyan\]}\[$reset\]$GIT_STATUS\[$reset\]$PROMPT_CHAR "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


## FIX logging (don not stop running processes)
alias logout=" /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend "
alias logoff=" /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend "


## FIX sleep problem on MAC laptops (handle with care)
#   ------------------------------------------------------------
alias when_sleep=" sudo pmset -a "
alias hibernate=" sudo pmset -a hibernatemode 25 "
alias sleep=" sudo pmset -a hibernatemode 0 "
alias safesleep=" sudo pmset -a hibernatemode 3 "
alias smartsleep=" sudo pmset -a hibernatemode 2 "


# SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------
# mountReadWrite:   For use when booted into single-user
alias mountReadWrite=" /sbin/mount -uw / "


## FIX and destroy .DS_Store files in the folder I am currently in
#   ------------------------------------------------------------
alias killDS=" find . -name *.DS_Store -type f -delete "



## testing libs available status
#   ------------------------------------------------------------
alias testme="
		uname -a;
		java -version;
        	apachectl -v;
		git --version;
		node --version;
		npm --version;
		karma --version;
        	phantomjs --version;
		casperjs --version;
	    	php -v;
		mongo --version;
		mongod --version;
		mongos --version;
        	sass -v;
		protractor --version;
		sw_vers;
		webpack -v;
	"

## get the VB (virtual box)
#   ------------------------------------------------------------
alias modernio='curl -O -L "https://www.modern.ie/vmdownload?platform=mac&virtPlatform=virtualbox&browserOS=IE11-Win10&parts=5&filename=VMBuild_20141027/VirtualBox/IE11/Mac/IE11.Win10.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"'
alias vb='curl -O -L "http://download.virtualbox.org/virtualbox/4.3.18/VirtualBox-4.3.18-96516-OSX.dmg"'

## chmod +x IE*.sfx
## ./IE11.Win10.For.MacVirtualBox.part1.sfx
## This will deploy an .dmg, double click and rock and roll!

## finder
#   ------------------------------------------------------------
alias f=" open -a Finder ./"


## where is my stuff
#   ------------------------------------------------------------
alias where="
		which git;
        	which express;
		which yo;
		which gulp;
		which mongo;
		which cordova;
		which php;
		which npm;
		which node;
                which nvm;
		which bower;
		which pouchdb;
		which couchdb;
		which java;
            "



# Start calculator with math support
alias bc=" bc -l "


#   extract:  Extract most know archives with one command
#   -----------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }


#   Reindexing Spotlight from the Command Line of Mac OS X
#   -----------------------------------------------------------
alias reindex=" sudo mdutil -E /Volumes/Macintosh\ HD/"

#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
alias memHogsTop=" top -l 1 -o rsize | head -20 "
alias memHogsPs=" ps wwaxm -o pid,stat,vsize,rss,time,command | head -10 "


## get top process eating memory
alias psmem=" ps aux | sort -nr -k 4 "
alias psmem10=" ps aux | sort -nr -k 4 | head -10 "


## get top process eating cpu ##
alias pscpu=" ps aux | sort -nr -k 3 "
alias pscpu10=" ps aux | sort -nr -k 3 | head -10 "

##
##  cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
alias cpu_hogs=" ps wwaxr -o pid,stat,%cpu,time,command | head -10 "

##
## screensaverDesktop: Run a screensaver on the Desktop
#   -----------------------------------------------------------------------------------
alias screensaverDesktop=" /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background "


##
##  Process on memory track
#   -----------------------------------------------------
alias track=' ps aux | grep  grunt '

# and finally
# sudo kill -9
# or killall -9 firefox


##
## Grunt shortcuts
#   ------------------------------------------------------------
alias cleanstart='  cleanstart -d -v '
alias cleanend=' grunt cleanend '
alias default=' grunt default '
alias build=' grunt build '
alias buildjs=' grunt buildjs '
alias buildjslib=' grunt buildjslib '
alias buildjshtml=' grunt buildjshtml '
alias buildcss=' grunt buildcss '
alias buildfonts=' grunt buildfonts '
alias buildresources=' grunt buildresources '
alias buildstubs=' grunt buildstubs '
alias ut=' grunt test —verbose '
alias utd=' grunt debugtest '
alias validatejs=' grunt validatejs '
alias release=' grunt release '
alias debugrelease=' grunt debugrelease '
alias analyseapp=' grunt analyseapp '


##
## Video FIX MAC
# ------------------------------------------------------------
#
alias video-fix=" sudo killall VDCAssistant "

##
## REST API utilities
# ------------------------------------------------------------
# Local rest JSON-Server as a Fake REST API in Frontend Development
# 'npm install -D json-server'
alias fakeServer=" json-server --watch db.json "

# Remote JSON-Server as a Fake REST API in Frontend Development
# 'npm install -D json-server'
#   ------------------------------------------------------------
alias fakeJson=" open-a https://jsonplaceholder.typicode.com "


##
## Aliases Mock RestAPI (local and remote)
#   ------------------------------------------------------------
alias mockRestAPI1=" open https://jsonplaceholder.com/ "
alias mockRestAPI2=" open http://www.jsontest.com/ "
alias mockRestAPI3=" open https://www.mocky.io/ "
alias mockRestAPI4=" open https://app.fakejson.com/ "
alias mockRestAPI4=" open http://www.omdbapi.com/ "


##
## Aliases validate JSON
#   ------------------------------------------------------------
alias JSONValidate=" open https://jsonformatter.curiousconcept.com/ "
alias JSONTools=" open https://jsonformatter.org/ "


