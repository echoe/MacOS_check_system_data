Written in like an hour using bash to quickly troubleshoot the spectre of System Data that keeps hitting my 256gb mac mini, this script just checks several common places where MacOS drops system data, and tells you any folders above 1GB in size.

To use, download the script to your computer, then in a terminal run:
sh SystemDataCheck.sh

You do not need to give it any special permissions and in fact it automatically blocks the normal permission errors from running it as your user from being output to the terminal for ease of legibility.

If you use this and it doesn't show you the System Data, or if it is missing common places for system data, please let me know. I'll add whatever other paths are common.
