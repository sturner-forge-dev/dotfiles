# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system:

### Git

```
brew install git
```

### Stow

```
brew install stow
```

## Installation

First, check out the dotfiles repository in your $HOME directory using git

```
$ git clone git@github.com/sturner-forge-dev/dotfiles.git
$ cd dotfiles
```

Then use GNU stow to create symlinks

```
$ stow .
```

A great resource: https://www.youtube.com/watch?v=y6XCebnB9gs
