
# 0x05. Processes and Signals

This project involves working with processes and signals in a Linux environment. You'll gain hands-on experience with managing processes using various commands, understanding PIDs (Process IDs), and handling different types of signals to control process behavior.

## Learning Objectives
By the end of this project, you will be able to:
- Understand what a process and PID are.
- Find and manage processes using Linux commands.
- Use signals to interact with processes.
- Understand different types of signals, including ones that cannot be ignored.

## Project Tasks

### 1. List your processes
Write a Bash script that lists all running processes for all users in a hierarchical format.
- **File**: `1-list_your_processes`

### 2. Show your Bash PID
Write a Bash script to display lines that contain the word `bash`, allowing you to easily get the PID of your Bash process.
- **File**: `2-show_your_bash_pid`

### 3. Show your Bash PID made easy
Write a Bash script to display the PID and process name for processes whose name contains `bash`.
- **File**: `3-show_your_bash_pid_made_easy`

### 4. To infinity and beyond
Write a Bash script that displays "To infinity and beyond" indefinitely, with a 2-second pause between each iteration.
- **File**: `4-to_infinity_and_beyond`

### 5. Don't stop me now!
Write a Bash script that stops the `4-to_infinity_and_beyond` process using the `kill` command.
- **File**: `5-dont_stop_me_now`

### 6. Stop me if you can
Write a Bash script that stops the `4-to_infinity_and_beyond` process without using the `kill` or `killall` commands.
- **File**: `6-stop_me_if_you_can`

### 7. Highlander
Write a Bash script that displays "To infinity and beyond" indefinitely and prints "I am invincible!!!" when receiving a SIGTERM signal.
- **File**: `7-highlander`

### 8. Beheaded process
Write a Bash script that kills the `7-highlander` process.
- **File**: `8-beheaded_process`

### 9. Process and PID file
Write a Bash script that:
- Creates a file `/var/run/myscript.pid` containing its PID.
- Displays "To infinity and beyond" indefinitely.
- Handles signals (SIGTERM, SIGINT, SIGQUIT) in custom ways.
- **File**: `100-process_and_pid_file`

### 10. Manage my process
Write a Bash script `manage_my_process` that runs indefinitely and logs "I am alive!" every 2 seconds. Also, write an init-style script to manage the process (start, stop, restart).
- **Files**: `101-manage_my_process`, `manage_my_process`

### 11. Zombie
Write a C program that creates 5 zombie processes and displays their PIDs.
- **File**: `102-zombie.c`

---

### Requirements
- All scripts must run on Ubuntu 20.04 LTS.
- All Bash scripts should start with `#!/usr/bin/env bash`.
- Bash scripts must pass **ShellCheck** without any errors.
- Scripts must be executable.

