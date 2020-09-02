
UPSTREAM='https://github.com/cc65/cc65.git'

all clean nuke install:V: upstream bind
	@{
		cd upstream && mk $target
	}

upstream:D: /bin/git/clone
	git/clone $UPSTREAM upstream

bind:V: upstream overlay
	if(! test -e upstream/mkfile)
		overlay mkfiles upstream
	if not
		status=''

unbind:V: upstream overlay
	overlay -u mkfiles upstream
