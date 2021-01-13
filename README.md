# .bash_profile

## [UPDATE] Catalina+ OSX
Apple has changed the default shell to `zsh`. Therefore you have to rename your configuration files: `.bashrc` is now `.zshrc` and `.bash_profile` is now `.zprofile`.

> If you for some reason (like me) don't want to rename/move the `~/.bash_profile` file you can do the next things:

```js
mv ~/.bash_profile ~/.zprofile
source ~/.bash_profile
```


## What to have .zsh without Catalina+ OSX?

### Instalation
```js
## install zsh
sudo apt install zsh

## Make default shell set and logout
chsh -s $(which zsh)
```

### oh my zsh
```js
// isntall oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Themes
In order to enable a theme, set ZSH_THEME to the name of the theme in your:
`~/.zshrc` (open ~/.zshrc). Then edit the: `ZSH_THEME="robbyrussell"` based on any theme from: https://github.com/ohmyzsh/ohmyzsh/wiki/Themes then: `Ctrl, T` for `new tab`.

```js
// example
ZSH_THEME="apple"
ZSH_THEME="aussiegeek"

ZSH_THEME="apple"
ZSH_THEME="apple"
ZSH_THEME="apple"
ZSH_THEME="apple"
ZSH_THEME="apple"
ZSH_THEME="apple"




---

## What is the `.bash_profile`
bash_profile is a configuration file for bash shell. When bash is invoked as an interactive login shell it first reads and executes commands from ~/. bash_profile.


## Why common `.bash_profile`
The idea is to share best practices, suggestions, tricks and keep the same profile across multiple development platforms easily cloning from the repository.

---
# System Operation Versions

## MAC version:
A typical install of OSX won't create a .bash_profile for you.
When you want to run functions from your command line, this is a must-have.

## Setup Startup Terminal
`Type`: "cd ~/" to go to your home folder
`Type`: "touch .bash_profile" to create your new file.
`Edit`: .bash_profile with your favorite editor (or you can just type "open -e .bash_profile" to open it in TextEdit.
`Type`: ". .bash_profile" to reload .bash_profile and update any functions you add (reload by the system)

---
### Commands and alliases:

### edit bash_profile
```
open -e ~/.bash_profile
```

### if you don't have this file, create it!
```
touch ~/.bash_profile
```

### PS1 terminal bash options

* PS1 option 1<br>
![PS1 option 1](https://i.ibb.co/YTV5Qhf/Screenshot-2021-01-13-at-21-49-03.png)

* PS1 option 2<br>
![PS1 option 2](https://i.ibb.co/QrtjwPj/Screenshot-2021-01-13-at-21-50-32.png)

### paste the bash_profile

### reload profile
```
. ~/.bash_profile
```

```
// from now on we will use the bash_profile
To edit: "edit_profile"
to reload: "reload_profile" (reload by using bash_profile)
```

---
## Windows version:

> Note: `Use double quotes instead of single one`!!

```javascript
git config --global alias.ci "commit -v"
```

```javascript
 git config --global alias.log "log --pretty=oneline"
```

```javascript
 git config --global alias.log1 "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
 ```


---
### :100: <i>Thanks!</i>
#### Now, don't be an stranger. Let's stay in touch!

> I'm a passionately curious Front-end Engineer. I like sharing what I know, and learning what I don't. London, UK.

##### :radio_button: linkedin: <a href="https://www.linkedin.com/in/leolanese/" target="_blank">@LeoLaneseltd</a>
##### :radio_button: Twitter: <a href="https://twitter.com/LeoLaneseltd" target="_blank">@LeoLaneseltd</a>
##### :radio_button: Portfolio: <a href="https://www.leolanese.com" target="_blank">www.leolanese.com</a>
##### :radio_button: DEV.to: <a href="https://www.dev.to/leolanese" target="_blank">dev.to/leolanese</a>
##### :radio_button: Blog: <a href="https://www.leolanese.com/blog" target="_blank">leolanese.com/blog</a>
##### :radio_button: Questions / Suggestion / Recommendation: developer@leolanese.com
