# bash_profile

## What is the bash_profile
bash_profile is a configuration file for bash shell. When bash is invoked as an interactive login shell it first reads and executes commands from ~/. bash_profile.

## Why common bash_profile
The idea is to share best practices, suggestions, tricks and keep the same profile across multiple development platforms easily cloning from the repository.


# System Operation versions

## MAC version:
A typical install of OSX won't create a .bash_profile for you.
When you want to run functions from your command line, this is a must-have.

## Setup
```
Startup Terminal
Type: "cd ~/" to go to your home folder
Type: "touch .bash_profile" to create your new file.
Edit: .bash_profile with your favorite editor (or you can just type "open -e .bash_profile" to open it in TextEdit.
Type: ". .bash_profile" to reload .bash_profile and update any functions you add (reload by the system)
```

### Commands and alliases:
### edit bash_profile
```
open -e ~/.bash_profile
```

### if you don't have this file, create it!
```
touch ~/.bash_profile
```

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
> Note: Use double quotes instead of single one.

```javascript
git config --global alias.ci "commit -v"
```

```javascript
 git config --global alias.log "log --pretty=oneline"
```

```javascript
 git config --global alias.log1 "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
 ```


--

---

<h5> { 'Leo Lanese',<br>
       'Building Inspiring Responsive Reactive Solutions',<br>
       'London, UK' }<br>
</h5>
<h5>Portfolio
<a href="http://www.leolanese.com" target="_blank">http://www.leolanese.com</a>
</h5>
<h5>Twitter:
<a href="http://twitter.com/LeoLaneseltd" target="_blank">twitter.com/LeoLaneseltd</a>
</h5>
<h5>Questions / Suggestion / Recommendation ?
<a href="mail:to">developer@leolanese.com</a>
</h5>
<h5>DEV.to:
<a href="http://www.dev.to/leolanese" target="_blank">www.dev.to/leolanese</a>
</h5>
<h5>Blog:
<a href="http://www.leolanese.com/blog" target="_blank">leolanese.com/blog</a>
</h5>
