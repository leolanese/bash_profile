# .bash_profile [UPDATED: Including `oh my zsh`] 

## What is the `.bash_profile`

bash_profile is a configuration file for bash shell. When bash is invoked as an interactive login shell it first reads and executes commands from: 

```js
// view
~/. bash_profile.
```

## Why common `.bash_profile`
The idea is to share best practices, suggestions, tricks and keep the same profile across multiple development platforms easily cloning from the repository.

---
## Executing commands as script on the NodeJS Playground

> If you like some of these command, you may find the NodeJS Playground scrips pool useful as well: [
NodeJS-playground](https://github.com/leolanese/NodeJS-playground/tree/main/scripts)

---
## System Operation Versions

### MAC version:
A typical install of OSX won't create a `.bash_profile` for you.
When you want to run functions from your command line, this is a must-have.

#### Setup Startup Terminal
```html
`Type`: "cd ~/" to go to your home folder
`Type`: "touch .bash_profile" to create your new file.
`Edit`: .bash_profile with your favorite editor (or you can just type "open -e .bash_profile" to open it in TextEdit.
`Type`: ". .bash_profile" to reload .bash_profile and update any functions you add (reload by the system)
```

---
### Commands and alliases:

### edit bash_profile

```js
open -e ~/.bash_profile
```

### if you don't have this file, create it!
```js
touch ~/.bash_profile
```

### PS1 terminal bash options

* PS1 option 1<br>
![PS1 option 1](https://i.ibb.co/YTV5Qhf/Screenshot-2021-01-13-at-21-49-03.png)

* PS1 option 2<br>
![PS1 option 2](https://i.ibb.co/QrtjwPj/Screenshot-2021-01-13-at-21-50-32.png)

### paste the bash_profile

### reload profile

```js
. ~/.bash_profile
```

```js
// from now on we will use the bash_profile
To edit: "edit_profile"
to reload: "reload_profile" (reload by using bash_profile)
```

---
## Windows version

> Note: `Use double quotes instead of single one`!!

```js
git config --global alias.ci "commit -v"

git config --global alias.log "log --pretty=oneline"

git config --global alias.log1 "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
```

---
## The `.zsh`

Apple has changed the default shell to `zsh`. Therefore you have to rename your configuration files: `.bashrc` is now `.zshrc` and `.bash_profile` is now `.zprofile`.

```js
// edit zsh
nano ~/.zshrc
```


> If you for some reason (like me) don't want to rename/move the `~/.bash_profile` file you can do the next things:

```js
// having a copy of `.bash_profile` and `.zprofile`
edit_p
cp ~/.bash_profile ~/.zprofile
source ~/.bash_profile
source ~/.zshrc
```

## Getting the `.zsh`
You can use it with or without Catalina+ OSX, and also in combination of the normal terminal.

### Instalation
```js
## install zsh
sudo apt install zsh

## Make default shell set and logout
chsh -s $(which zsh)
```

### oh my zsh
```js
// install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Themes
In order to enable a theme, set ZSH_THEME to the name of the theme in your:
`~/.zshrc` (open ~/.zshrc). Then edit the: `ZSH_THEME="robbyrussell"` based on any theme from: https://github.com/ohmyzsh/ohmyzsh/wiki/Themes then: reload .zshrc:

```js
// reload zsh
source ~/.zshrc
```

```js
// example themes
ZSH_THEME="bira"
ZSH_THEME="dallas"
ZSH_THEME="half-life"
ZSH_THEME="aussiegeek"
ZSH_THEME="avit"
```

### Pluggins

Choose from the list: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins
add the `plugin` to your plugins array in `~/.zshrc` (SHIFT, cmd, .) view all files there, paste plugin into plugin folder. Standard plugins can be found in `$ZSH/plugins/`

```js
// example
plugins=(vscode zsh_reload git)
```


---
### :100: <i>Thanks!</i>
#### Now, don't be an stranger. Let's stay in touch!

##### :radio_button: linkedin: <a href="https://www.linkedin.com/in/leolanese/" target="_blank">@LeoLanese</a>
##### :radio_button: Twitter: <a href="https://twitter.com/LeoLanese" target="_blank">@LeoLanese</a>
##### :radio_button: Portfolio: <a href="https://www.leolanese.com" target="_blank">www.leolanese.com</a>
##### :radio_button: DEV.to: <a href="https://www.dev.to/leolanese" target="_blank">dev.to/leolanese</a>
##### :radio_button: Blog: <a href="https://www.leolanese.com/blog" target="_blank">leolanese.com/blog</a>
##### :radio_button: Questions / Suggestion / Recommendation: developer@leolanese.com
