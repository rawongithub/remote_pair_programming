A set of simple scripts for setting up a remote pair programming environment with screen and vim.

### INSTALL

Clone/download/copy scripts directory and CD into:

    $ cd pair_programing

Install required system packages and setup screen environment:

    $ sudo ./install.sh

Create pair programming users:

    $ sudo ppusers.sh USER1 USER2 USER3

Copy users ssh keys to make them available to secure log in via ssh.


### USAGE

Log into USER1 account and set up multisession screen for chosen users:

    $ ppsession.sh USER2 USER3

Log into USER1 screen account and run screen:

    $ screen

Then the USER2 and USER3 can join the USER1's screen session by starting screen with:

    $ screen -x USER1/

