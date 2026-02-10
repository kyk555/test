# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a minimal shell script development environment located at `/home/canger168/test`. The repository contains a single executable bash script for testing and demonstration purposes.

## Architecture

The codebase consists of:
- **test.sh** - A simple executable bash script that prints a greeting, current directory, and command-line arguments
- No additional source code, dependencies, or complex structure

## Development Commands

### Running Scripts
```bash
./test.sh [arguments...]
```
Example: `./test.sh --arg1 value1 --arg2 value2`

### File Management
- The directory contains only one executable file
- All files have executable permissions set with `chmod +x`
- No build process or compilation required

## Development Workflow

1. Edit shell scripts directly in the root directory
2. Make scripts executable: `chmod +x script_name.sh`
3. Test scripts: `./script_name.sh`
4. No dependency management or package installation required

## Notes

- This is a minimal environment suitable for simple shell script development
- No version control, testing framework, or build automation is configured
- The environment uses bash scripting as the primary development method
- No external dependencies or package managers are used