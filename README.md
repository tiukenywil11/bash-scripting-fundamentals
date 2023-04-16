# Resources:
- https://www.freecodecamp.org/news/bash-scripting-tutorial-linux-shell-script-and-command-line-for-beginners/
- https://oit.ua.edu/wp-content/uploads/2020/12/Linux_bash_cheat_sheet-1.pdf
- https://www.baeldung.com/linux/use-command-line-arguments-in-bash-script
- https://www.geeksforgeeks.org/basic-operators-in-shell-scripting/
- https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php
- https://zach-gollwitzer.medium.com/the-ultimate-bash-crash-course-cb598141ad03

## Config file
- https://askubuntu.com/questions/743493/best-way-to-read-a-config-file-in-bash

## Regex
- https://dev.to/codestackr/regular-expressions-regex-crash-course-248n
- https://regexr.com/
# Notes:
1. From ChatGPT: To check bash script version.
  - Always add SCRIPT_VERSION to bash scripts, so that they can be used on Ansible better.
  ```
  #!/bin/bash
  SCRIPT_VERSION="1.0.0"

  if [[ "$SCRIPT_VERSION" != "1.0.0" ]]; then
    echo "ERROR: Script version mismatch"
    exit 1
  fi
  ```
  - Include the version number in the filename or in a separate file. You can then use this information to compare against the version number stored in the script.
  ```
  filename="my_script_v1.0.0.sh"
  version=$(echo "$filename" | sed 's/^.*_v\(.*\)\.sh$/\1/')

  if [[ "$version" != "$SCRIPT_VERSION" ]]; then
    echo "ERROR: Script version mismatch"
    exit 1
  fi
  ```
2. From ChatGPT: For integration with Ansible: Use the following code snippet to check if bash script is already ran on a node.
  ```
  - name: Check if bash script has been run
  hosts: myhost
  gather_facts: false

  tasks:
  - name: Check if file exists
    stat:
      path: /path/to/bash_script.sh
    register: script_file

  - name: Run bash script
    command: /bin/bash /path/to/bash_script.sh
    when: not script_file.stat.exists
  ```

# Errors encounted:
  - https://stackoverflow.com/questions/39527571/are-shell-scripts-sensitive-to-encoding-and-line-endings