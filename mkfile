
UPSTREAM='https://github.com/cc65/cc65.git'

all clean nuke install:V: upstream bind
	@{
		cd upstream && mk $target
	}

upstream:
	git/clone $UPSTREAM upstream

sync pull:V: upstream
	git/pull
	@{
		cd upstream && git/pull
	}

upstream/mkfile: upstream
	overlay mkfiles upstream

bind:V: upstream/mkfile

unbind:V:
	overlay -u mkfiles upstream
