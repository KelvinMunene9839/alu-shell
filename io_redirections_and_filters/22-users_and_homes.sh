#!/bin/bash
cut --output-delimiter=: -d: -f1,6 /etc/passwd | sort
