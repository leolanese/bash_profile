clear

##
## BASIC CONFIGURATION
##
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export LC_CTYPE="en_UK.UTF-8"
export LC_ALL="en_UK.UTF-8"
tput bel


# Allow npm install -g without needing sudo
npm config set prefix $dir


#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
export EDITOR=/usr/bin/nano
alias='$EDITOR ~/.bashrc ; source ~/.bashrc'


# JAVA_HOME set
#   ------------------------------------------------------------
export JAVA_HOME="$(/Library/Java/JavaVirtualMachines/jdk1.7.0_75.jdk/Contents/Home/bin)"
alias java_jre='/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java'


##
## BASIC COMMANDS
##
# NPM
alias npmOld=" npm outdated " 
alias npmNot=" npm prune " 
alias npmAllDependencies=" npm shrinkwrap "
alias npmV3=" npm install -g npm@3 "


## MAC commands
#   ------------------------------------------------------------
alias showExt=" defaults write NSGlobalDomain AppleShowAllExtensions -bool true "
alias hideAll=" defaults write com.apple.finder AppleShowAllFiles true "
alias showPath=" defaults write com.apple.finder _FXShowPosixPathInTitle -bool true "
alias showLIbrary=" chflags nohidden ~/Library "

alias setBootVolume=" bless --mount "/path/to/mounted/volume" --setBoot "
alias showAll=" diskutil list "
alias hideFolder=" chflags hidden /path/to/folder/ "
alias clearFontCache="
	atsutil databases -removeUser && \
	atsutil server -shutdown && \
	atsutil server -ping
"
alias macScreen=" system_profiler SPDisplaysDataType | grep Resolution "
alias lock=" /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend " 
alias bell=" tput bel "
alias show_all="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Dock"
alias hide_all='defaults write com.apple.finder ShowAllFiles FALSE  && killall Dock'
alias notification_center="launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist killall NotificationCenter"


## root commands
#   ------------------------------------------------------------
alias rootMode=" dsenableroot "
alias su=" sudo su "


## index commands
#   ------------------------------------------------------------
alias disable=" Indexingmdutil -i off -d /path/to/volume "

# Show hidden files 
alias l.='ls -d .* --color=auto'
 
## MAC diagnosis commands
#   ------------------------------------------------------------
alias macScan=" sudo sysdiagnose -f ~/Desktop/ "
alias macInfo=" networksetup -listallhardwareports "
alias showOSX=" sw_vers "
alias macCore=" sysctl -n machdep.cpu.brand_string "
# Wakeup sleeping servers (replace mac with your actual server mac address)
alias wakeupnas01='/usr/bin/wakeonlan 00:11:32:11:15:FC'


# Printer
#   ------------------------------------------------------------
alias dontSleep=" caffeinate -u -t 3600 "
alias goSleep=" sudo pmset sleep 5 "
alias checkSleep=" sudo systemsetup -getcomputersleep "

# Audio
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

# Printer
#   ------------------------------------------------------------
alias wifyPassword=" security find-generic-password -D 'AirPort network password' -a 'SSID' -gw "
alias wirelessScan=" airport -s "
alias said=" /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}' "
alias clearPrinterQueue=" cancel -a - "

# DELETE
#   ------------------------------------------------------------
alias secureDelete=" srm -r /path/to/file " 


#   Change Prompt
#   ------------------------------------------------------------
echo -n -e "\033]0;LeoLaneseltd\007"
echo -e "Kernel Information: " ;uname -smr
echo -e "${COLOR_BROWN}"; bash --version
echo -ne "${COLOR_GRAY}Uptime: "; uptime
echo -ne "${COLOR_GRAY}Server time is: "; date	
cd /Users/leolanese/ivma_device/


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
alias allport="find ~/Sites/ptf/less/ -name '*.less' -exec lessc {} \; > ~/Sites/ptf/css/combined.css;"


## instead doing this I can use Grunt: Compile LESS directly and copy into deployment CSS folder directory.
#   ------------------------------------------------------------
alias port="lessc ~/Sites/ptf/less/grid.less > ~/Sites/ptf/css/grid.css;
            lessc ~/Sites/ptf/less/mindex.less > ~/Sites/ptf/css/mindex.css;
"



## dev rsyncs
#   ------------------------------------------------------------
alias sync="rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/js/ /Volumes/wi.mobile/js;
            rsync -avp --stats --prune-empty-dirs --exclude='*~' --exclude='.DS_Store' /Users/llanese/Sites/wi.mobile/Source/WI.Web/css/fonts/ /Volumes/wi.mobile/css/fonts;
"

## all together
#   ------------------------------------------------------------
alias go="less sync"
alias texttofile="say -o urgentAssistance.aiff -v 'Kate' 'Your status has been updated to Urgent Assistance'"


## shortcuts & directions
#   ------------------------------------------------------------
alias  rm='rm -rfv'
alias  root="cd ~/Documents/root"
alias  goto_myP="goto_web; cd myProject"
alias  l="ls -la"
alias  ls="ls -aFhlG"
alias  ll="ls -l" 
alias  ls='ls -GFh'
alias  search=grep
alias  ..="cd .."
alias  ...="cd ../.."
alias  h="history"
alias  dh="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent'"
alias  ddh="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
alias  used="defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'; killall Dock"


## automatic tasks manages shortcuts
#   ------------------------------------------------------------
alias bower_dependencies="grunt bower-install-simple; bower update"


## git
#   ------------------------------------------------------------
alias git_config=" cat .git/config "
alias git_end_sprint=" git branch | grep -v 'master' | xargs git branch -D "
alias git_merge=" git difftool "
alias git_branch=" git branch -a "
alias git_log=" git log --graph --oneline --all --decorate --color "
alias git_log2=" git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short "
alias git_log3=" git log --pretty=oneline "
alias git_users=" git log --format='%aN' | sort -u "
alias git_diff=" git log -p "
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all &'
alias git_i=" git add -i "
alias git_me=" git log --author=LeoLanese "
alias git_remote=" git remote -v "
alias git_clean=" find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch; 
		git config --global core.excludesfile ~/.gitignore;
		echo .DS_Store >> ~/.gitignore "
alias git_all_users='git log --format='%aN' | sort -u '
alias git_tasks=' grep --exclude-dir=.git -rEI "TODO|FIXME" . 2>/dev/null '

#alias git_last='for k in 'git branch|sed s/^..//';do echo -e 'git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"'\\t"$k";done|sort'

alias git_ignore=' find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitignore \; '
alias git_undelete=' git checkout $(git rev-list -n 1 HEAD -- "$file")^ -- "$file" '
alias git_idea=' git rm -r --cached .idea '
alias n=' NODE_ENV=development grunt server '
alias sprint_start=" git branch -D 'git branch | grep -E 'IVMA-..*'' "  
alias contributors=' git shortlog -sn '
alias git_name=' git config user.name '


## ports
#   ------------------------------------------------------------
alias check_open_ports="lsof -Pi | grep LISTEN"
alias check_port="lsof -i :8888"
alias check_establish="lsof -i | grep -i estab"


# Watch Network Traffic
#   ------------------------------------------------------------
alias network=" nettop -m route "

 
## aliases
#   ------------------------------------------------------------
alias get_ip='curl ip.telize.com'
alias get_macaddress='networksetup -getmacaddress Wi-Fi'
alias ip='curl -s http://wtfismyip.com/text'
alias ip2='curl l2.io/ip'
alias header='curl -I g.cn'
alias validate_json='curl -s "http://feeds.delicious.com/v2/json?count=5" | python -m json.tool | less -R'
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs
alias crazy=" LC_ALL=C tr -c '[:digit:]' ' ' < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR='1;32' grep --color '[^ ]' "
alias matrix='yes 'c=(" " "  " "   " 0 1); printf "${c[RANDOM%5]}"' | bash'


## aliases pouchDB and Futon (PouchDB UI)
#   ------------------------------------------------------------
alias db_alive=' curl http://127.0.0.1:5984/ | python -m json.tool '
alias db=' curl -X GET http://127.0.0.1:5984/_all_dbs | python -m json.tool '
alias db_put=' curl -X PUT http://127.0.0.1:5984/test | python -m json.tool '
alias db_delete=' curl -X DELETE http://127.0.0.1:5984/test '
alias db_insert=' curl -H "Content-Type: application/json" --data @tt.json http://127.0.0.1:5984/test '
alias db_restart=' curl -X POST http://localhost:5984/_restart -H 111 "Content-Type: application/json" '



## the "qp" alias ("que pasa")
#   ------------------------------------------------------------
alias qp="ps auxwww"


## Python Server
#   ------------------------------------------------------------
alias server='python -m SimpleHTTPServer 8888'
# simple http server to dump request headers
alias dump=" curl -s -H "X-Something: test" localhost:8888 > /dev/null "


# mongoDB
#   ------------------------------------------------------------
alias mon="mongod --dbpath /Users/leolanese/met/data/db --rest"


## grunt alias to run dev
#   ------------------------------------------------------------
alias gdev="grunt dev && grunt"


## fun
#   ------------------------------------------------------------
alias radio=" open http://kissfm.es/player/ "
alias radio2="  open http://drs1.radio.net/ " 
# play all music files from the current directory
alias playwave='for i in *.wav; do mplayer "$i"; done'
alias playogg='for i in *.ogg; do mplayer "$i"; done'
alias playmp3='for i in *.mp3; do mplayer "$i"; done'


# IT dev essential shortcuts
#   ------------------------------------------------------------
## BS components
alias bs=" open http://getbootstrap.com/components/ "
alias bs2=" open http://getbootstrap.com/examples/grid/ "
alias bs3=" http://www.w3schools.com/bootstrap/bootstrap_grid_system.asp "
alias bs4=" http://www.tutorialrepublic.com/twitter-bootstrap-tutorial/ "
## fonts/icons components
alias icons=" open http://fortawesome.github.io/Font-Awesome/cheatsheet/ "
alias icons2=" open https://design.google.com/icons/ "
## AJS best practices
alias papajuan=" open https://github.com/johnpapa/angular-styleguide "

alias password=" open chrome://settings/cookies "
alias traceur=" open http://google.github.io/traceur-compiler/demo/repl.html# "
alias es6fiddle=" open http://www.es6fiddle.net/ "
alias caniusees6=" open http://kangax.github.io/compat-table/es6/ " 
alias es6features=" open https://github.com/lukehoban/es6features "
alias json=" open https://jsonformatter.curiousconcept.com/ "


## personal projects
#   ------------------------------------------------------------
alias oldll=" open http://leolanese.com/portfolio_old3/root/js_2.php "
alias leo=" open http://leolanese.com "
alias lab=" open http://www.rwdlab.com "


## testing
#   ------------------------------------------------------------
alias ios6=" open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app "
alias ios5=" open /Applications/Xcode.app/Contents/Developer/Applications/iOS Simulator.app "
alias ios3=" open /Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone Simulator.app "

alias safari=" open -a safari http://localhost:9000/ "
alias chrome=" open -a '/Applications/Google Chrome.app' "
alias lynx=" lynx 'http://www.bbc.co.uk' "


## test-driven test
alias  run_casper="casperjs /Users/llanese/Sites/tests/go.js http://www.bostonglobe.com/" 
alias  run_jasmine="open -a safari http://m.devu.jackpotparty.com/tests/jasmine/wmsRunner.html" 


## profile
alias  edit_profile='open -e ~/.bash_profile'
alias  reload_profile=". ~/.bash_profile"


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
export PS1="-->\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


## FIX logging (don not stop running processes)
alias logout="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias logoff="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"


## FIX sleep problem on MAC laptops (handle with care)
#   ------------------------------------------------------------
alias when_sleep=' sudo pmset -a '
alias hibernate=' sudo pmset -a hibernatemode 25 '
alias sleep=' sudo pmset -a hibernatemode 0 '
alias safesleep=' sudo pmset -a hibernatemode 3 '
alias smartsleep=' sudo pmset -a hibernatemode 2 '


# SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------
alias mountReadWrite='/sbin/mount -uw /'    # mountReadWrite:   For use when booted into single-user


## FIX and destroy .DS_Store files in the folder I am currently in
#   ------------------------------------------------------------
alias killDS='find . -name *.DS_Store -type f -delete'


## git configuration
# specify a global exclusion list
#   ------------------------------------------------------------
git config --global core.excludesfile ~/.gitignore
# adding .DS_Store to that list
echo .DS_Store >> ~/.gitignore


## testing libs available status
#   ------------------------------------------------------------
alias testme='	java -version;
        	apachectl -v;
		git --version;
		node --version;
		npm --version;
		bower -v;
		karma --version;
        	phantomjs --version;
		casperjs --version;
		grunt -version;
	    	php -v;
		mongo --version; 
		mongod --version;
		mongos --version;
		yo --version;
		grunt --version;
		bower --version;
        	sass -v;
		protractor --version;
		cordova -v;
		uname -a;
		sw_vers;
	'




## get the VB (virtual box)
#   ------------------------------------------------------------
alias modernio='curl -O -L "https://www.modern.ie/vmdownload?platform=mac&virtPlatform=virtualbox&browserOS=IE11-Win10&parts=5&filename=VMBuild_20141027/VirtualBox/IE11/Mac/IE11.Win10.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"'
alias vb='curl -O -L "http://download.virtualbox.org/virtualbox/4.3.18/VirtualBox-4.3.18-96516-OSX.dmg"'

## chmod +x IE*.sfx
## ./IE11.Win10.For.MacVirtualBox.part1.sfx
## This will deploy an .dmg, double click and rock and roll!

## finder
#   ------------------------------------------------------------
alias f='open -a Finder ./'
alias .='open -a Finder ./'


## where is my stuff
#   ------------------------------------------------------------
alias where='
		which git;
        	which express;
		which yo; 
		which gulp;
		which mongo;
		which cordova;
		which php;
		which npm;
		which node;
		which bower;
		which pouchdb;
		which couchdb;
	'


## REMOVING all the Node dependencies
#   ------------------------------------------------------------
# alias npm_dev='npm ls | grep -v 'npm@' | awk '/@/ {print $2}' | awk -F@ '{print $1}' | xargs npm rm'


# Start calculator with math support
alias bc='bc -l'



## Improving the terminal for fast typers
#   ------------------------------------------------------------		
alias cd..='cd ../'                         # Go back 1  level 
alias ..='cd ../'                           # Go back 1  level
alias ...='cd ../../'                       # Go back 2  levels
alias .3='cd ../../../'                     # Go back 3  levels
alias .4='cd ../../../../'                  # Go back 4  levels
alias .5='cd ../../../../../'               # Go back 5  levels
alias .6='cd ../../../../../../'            # Go back 6  levels
alias c='clear'   
alias show_options='shopt'
alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)



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


#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }


#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
    
## get top process eating memory
alias psmem='ps aux | sort -nr -k 4'
alias psmem10='ps aux | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps aux | sort -nr -k 3'
alias pscpu10='ps aux | sort -nr -k 3 | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

# screensaverDesktop: Run a screensaver on the Desktop
#   -----------------------------------------------------------------------------------
alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'


#   process on memory track
#   -----------------------------------------------------
alias track=' ps aux | grep  grunt ' 
# and finally kill -9 


# Python server
#   ------------------------------------------------------------
alias server='python -m SimpleHTTPServer 8000'


# Grunt shortcuts
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


# JSON-Server as a Fake REST API in Frontend Development
# npm install -D json-server
#   ------------------------------------------------------------
alias fakeServer=' json-server --watch db.json '
