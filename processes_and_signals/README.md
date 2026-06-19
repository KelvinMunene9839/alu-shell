# Processes and Signals

A collection of Bash scripts for managing processes and signals on Linux.

## Concepts

**PID (Process ID):** A unique integer assigned by the kernel to every running process.

**Process:** A running instance of a program, managed by the OS with its own PID, memory space, and state.

**Finding a process' PID:** Use `pgrep <name>`, `pidof <name>`, or `ps aux | grep <name>`.

**Killing a process:** Use `kill <PID>` to send a signal (default SIGTERM) or `kill -9 <PID>` for SIGKILL.

**Signal:** An asynchronous notification sent to a process to trigger a specific behavior (e.g. terminate, pause, reload).

**Signals that cannot be ignored:** `SIGKILL` (9) and `SIGSTOP` (19) — the kernel handles these directly and they cannot be caught or overridden by a process.

## Files

| File | Description |
|------|-------------|
| `0-what-is-my-pid` | Displays the PID of the running script |
| `1-list_your_processes` | Lists all running processes for all users with hierarchy |
| `2-show_your_bash_pid` | Displays process lines containing the word `bash` |
| `3-show_your_bash_pid_made_easy` | Displays PID and name of processes whose name contains `bash` |
| `4-to_infinity_and_beyond` | Prints "To infinity and beyond" indefinitely with 2s sleep |
| `5-dont_stop_me_now` | Stops the `4-to_infinity_and_beyond` process using `kill` |
| `6-stop_me_if_you_can` | Stops `4-to_infinity_and_beyond` without using `kill` or `killall` |
| `7-highlander` | Loops indefinitely; responds to SIGTERM with "I am invincible!!!" |
| `67-stop_me_if_you_can` | Stops the `7-highlander` process without using `kill` or `killall` |
| `8-beheaded_process` | Kills the `7-highlander` process with SIGKILL |
| `10-process_and_pid_file` | Manages a PID file and handles SIGTERM, SIGINT, and SIGQUIT |
| `manage_my_process` | Daemon that writes "I am alive!" to `/tmp/my_process` every 2s |
| `11-manage_my_process` | Init script to `start`, `stop`, or `restart` `manage_my_process` |

## Requirements

- Interpreted on Ubuntu 20.04 LTS
- All scripts pass Shellcheck 0.7.0
- First line: `#!/usr/bin/env bash`
- Second line: comment describing what the script does
