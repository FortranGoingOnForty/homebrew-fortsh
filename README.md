# Homebrew Tap for fortsh

This is a Homebrew tap for [fortsh](https://github.com/FortranGoingOnForty/fortsh), a modern Unix shell implementation written in Fortran with AST-based parsing.

## Installation

```bash
# Add the tap
brew tap FortranGoingOnForty/fortsh

# Install fortsh
brew install fortsh
```

## Usage

After installation, you can run fortsh:

```bash
fortsh
```

## About fortsh

Fortsh (Fortran Shell) is a modern Unix shell implementation written in Fortran 2018 that demonstrates Fortran's capability for system programming. It provides:

- **AST-based parsing** with modern compiler design
- **Full builtin compliance** with comprehensive shell commands
- **Proper signal handling** for external commands
- **Advanced features**: job control, pattern matching, brace expansion
- **POSIX compliance** with enhanced functionality

## Development

To install the latest development version from the trunk branch:

```bash
brew install --HEAD fortsh
```

## Issues

Report issues at: https://github.com/FortranGoingOnForty/fortsh/issues
