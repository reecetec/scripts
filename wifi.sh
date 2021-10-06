#!/bin/bash

# nmcli con show -> lists active connections

# lists all of the available wifi networks, filters out everything but the names of the potential networks.
nmcli dev wifi | awk '{ print $2 } NR==10{exit}' | awk 'NR!=1 {print}' |
	awk '/[^--]/{print}'
