
# Regular Expressions in Ruby - Oniguruma

## Description
This project explores the use of **Regular Expressions (regex)** in Ruby, focusing on the **Oniguruma** library. Regular expressions are powerful tools for matching patterns within strings, and this project allows you to get hands-on experience in building regex patterns to solve specific tasks.

## Requirements
- All scripts are written in Ruby and interpreted using **Oniguruma**, the default regular expression library for Ruby.
- All files should be executable and end with a new line.
- The first line of all scripts is `#!/usr/bin/env ruby`.
- Your scripts should accept one argument, process it using regex, and display the appropriate result.

## Tasks

### 0. Simply matching School
Write a Ruby script that matches the word "School" in a string.
- **File**: `0-simply_match_school.rb`

### 1. Repetition Token #0
Create a Ruby script to match patterns with a repetition token.
- **File**: `1-repetition_token_0.rb`

### 2. Repetition Token #1
Create a Ruby script to match patterns using a different repetition token.
- **File**: `2-repetition_token_1.rb`

### 3. Repetition Token #2
Create a Ruby script to match yet another set of patterns using repetition.
- **File**: `3-repetition_token_2.rb`

### 4. Repetition Token #3
Create a Ruby script that matches a specific pattern without using square brackets.
- **File**: `4-repetition_token_3.rb`

### 5. Not quite HBTN yet
Write a Ruby script that matches strings starting with "h", ending with "n", and having a single character in between.
- **File**: `5-beginning_and_end.rb`

### 6. Call me maybe
Write a Ruby script that matches a 10-digit phone number.
- **File**: `6-phone_number.rb`

### 7. OMG WHY ARE YOU SHOUTING?
Write a Ruby script that matches only capital letters.
- **File**: `7-OMG_WHY_ARE_YOU_SHOUTING.rb`

### 8. Textme (Advanced)
Write a Ruby script that extracts the sender, receiver, and flags from a TextMe log.
- **File**: `100-textme.rb`

## Usage
Each script accepts one argument and prints the result based on the regex used. Example:

```bash
$ ./0-simply_match_school.rb "Best School"
School
