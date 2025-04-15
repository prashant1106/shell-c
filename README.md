# shell-c

A simple Unix-like shell implemented in C, supporting command parsing, execution, piping, redirection, command history, and basic built-in commands.

---

## Features

- **Built-in Commands:**
  - `cd` – Change directory (supports `~` for home)
  - `pwd` – Print working directory
  - `echo` – Print arguments to standard output
  - `type` – Identify if a command is built-in or external
  - `exit` – Exit the shell

- **External Commands:**  
  Executes any command found in the system `PATH`.

- **Pipes and Redirection:**  
  - Supports `|` for piping commands
  - Supports `&lt;`, `&gt;`, and `2&gt;` for input, output, and stderr redirection

- **Command History:**  
  - Remembers the last 10 commands
  - Navigate history with up/down arrow keys

- **Tab Completion:**  
  - Tab key auto-completes built-in commands

- **Raw Terminal Mode:**  
  - Handles input character-by-character for advanced editing and navigation

---

## File Structure

```

.
├── main.c         \# Entry point, shell loop, input handling
├── main.h         \# Main header, defines constants and includes
├── types.h        \# Data structures for commands and arguments
├── commands.c     \# Built-in command implementations
├── commands.h     \# Built-in command declarations
├── parser.c       \# Command line parsing logic
├── parser.h       \# Parser function declarations
├── executor.c     \# Command execution and I/O redirection
├── executor.h     \# Executor function declarations
├── utils.c        \# Utility functions (e.g., find_command, string parsing)
├── utils.h        \# Utility function declarations

```

---

## Build &amp; Run

### Prerequisites

- GCC or compatible C compiler
- Unix-like environment (Linux, macOS)

### Build

```

gcc -o my_shell main.c parser.c commands.c executor.c utils.c

```

### Run

```

./my_shell

```

---

## Usage

- **Prompt:**  
  Displays as `<username>@<hostname>$`
- **Command Entry:**  
  Type commands and press Enter to execute.
- **History Navigation:**  
  Use Up/Down arrow keys to browse previous commands.
- **Tab Completion:**  
  Press Tab to auto-complete built-in commands.
- **Exit:**  
  Type `exit` or press Ctrl+C to quit.

---

## Example

```

user@host$ pwd
/home/user

user@host$ echo Hello, World!
Hello, World!

user@host$ ls -l | grep ".c" > cfiles.txt

```

---

## Implementation Notes

- **Data Structures:**  
  - Linked lists for command and argument parsing
- **Parsing:**  
  - Handles quotes, escapes, and whitespace
- **Execution:**  
  - Forks processes for external commands and pipelines
- **Redirection:**  
  - Supports file descriptor manipulation for `<`, `>`, and `2>`

---

## License

MIT License  
See [main.h](main.h) for full license text.

---

## Author

Prashant Kumar Jha, 2025

---

## Contributing

Pull requests and suggestions are welcome!

---

## Acknowledgements

- Inspired by classic Unix shells (bash, sh)
- Uses standard C libraries and POSIX APIs

---

**Enjoy your custom shell!**