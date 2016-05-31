This is the setting of my git-hooks.

# Require
* Mac OS X El Capitan
* git version 1.8.4
* brew install cowsay
* brew install figlet

# Description

## config 
* alias setting.

## hooks/pre-push
* pre-push script.
* If you push the remote master branch,The this script will be interactive script.


## hooks/cowsay.rb
* Script to be used in the pre-push.

## hooks/essay.rb
* Script to be used in the pre-push.
* It outputs the words and Links to raise the motivation to random.

## hooks/reviewer.rb
* Script to be used in the pre-push.
* Select reviewer from the git blame.
