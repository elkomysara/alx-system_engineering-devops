
# **0x04. Loops, Conditions, and Parsing**

This project contains Bash scripting exercises that focus on loops, condition statements, parsing files, and basic shell automation. All scripts are designed for Ubuntu 20.04 LTS and must pass ShellCheck without any errors.

## **Learning Objectives**
By the end of this project, you should be able to:
- Create and manage SSH RSA key pairs.
- Utilize `for`, `while`, and `until` loops in Bash.
- Implement `if`, `elif`, `else`, and `case` condition statements.
- Use commands like `cut`, `env`, and perform file tests.
- Make your Bash scripts portable.
  
## **Requirements**
- All scripts are executed on Ubuntu 20.04 LTS.
- First line of all scripts: `#!/usr/bin/env bash`.
- ShellCheck version 0.7.0 compliance.
- No use of `awk` (unless specifically allowed) or `for`, `while`, or `until` loops unless specified.
- Proper usage of conditionals like `if`, `elif`, and `case`.

---

## **Tasks**

### **0. Create an SSH RSA key pair**
- Generate an RSA key pair using `ssh-keygen` and save your public key in `0-RSA_public_key.pub`.
- Save the private key in a secure location for SSH server connections.

### **1. For Best School loop**
- Write a Bash script that uses a `for` loop to display "Best School" 10 times.

### **2. While Best School loop**
- Write a Bash script that uses a `while` loop to display "Best School" 10 times.

### **3. Until Best School loop**
- Write a Bash script that uses an `until` loop to display "Best School" 10 times.

### **4. If 9, say Hi!**
- Write a Bash script that displays "Best School" 10 times but prints "Hi" after the 9th iteration. Use a `while` loop and an `if` statement.

### **5. 4 bad luck, 8 is your chance**
- Write a Bash script that loops from 1 to 10. For the 4th iteration, print "bad luck"; for the 8th iteration, print "good luck"; otherwise, print "Best School". Use `if`, `elif`, and `else`.

### **6. Superstitious numbers**
- Write a Bash script that displays numbers from 1 to 20. For specific numbers, print "bad luck" messages from different cultures using a `while` loop and `case` statements.

### **7. Clock**
- Write a Bash script to display the time for 12 hours and 59 minutes using a `while` loop.

### **8. For ls**
- Write a Bash script that displays the content of the current directory in a list format. Only display the part of the file name after the first dash (`-`). Use a `for` loop and exclude hidden files.

### **9. To file, or not to file**
- Write a Bash script that checks for the existence of a file named `school`. If the file exists, print whether it’s empty or not and whether it’s a regular file.

### **10. FizzBuzz**
- Write a Bash script that displays numbers from 1 to 100. For multiples of 3, display "Fizz"; for multiples of 5, display "Buzz"; for multiples of both, display "FizzBuzz".

### **11. Read and cut**
- Write a Bash script that reads the `/etc/passwd` file and displays the username, user ID, and home directory path.

### **12. Tell the story of passwd**
- Write a Bash script that formats the content of `/etc/passwd` into a sentence using `while` and IFS (internal field separator).

### **13. Let’s parse Apache logs**
- Write a Bash script that parses an Apache log file and outputs the visitor IP and HTTP status code. Use `awk`.

### **14. Dig the data**
- Write a Bash script that groups Apache logs by IP and HTTP status code, displaying the occurrence count in descending order. Use `awk`.

---

## **Author**
- **Sara**
