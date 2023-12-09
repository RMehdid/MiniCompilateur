# LC6-+ Compiler

This project implements a compiler for the LC6-+ language using Flex and Bison.

## Overview

The LC6-+ language is a C-like language with specific syntax and features. The compiler consists of a lexer implemented using Flex and a syntax analyzer implemented using Bison.

## Prerequisites

Before running the compiler, make sure you have the following prerequisites installed on your system:

- **Flex:** The lexical analyzer generator. You can install it using your package manager or tools like Homebrew.

    ```bash
    # Example installation on macOS with Homebrew
    brew install flex
    ```

- **Bison:** The parser generator. Install it using your package manager or tools like Homebrew.

    ```bash
    # Example installation on macOS with Homebrew
    brew install bison
    ```

## Usage

To compile the lexer and parser, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/RMehdid/lc6-compiler.git
    cd lc6-compiler
    ```

2. Build the lexer and parser:

    ```bash
    flex lexicale.l
    bison -d syntaxic.y
    gcc lex.yy.c syntaxic.tab.c -o lc6-compiler -lfl -ly
    ```

3. Run the compiler:

    ```bash
    ./lc6-compiler
    ```

## Language Features

The LC6-+ language supports the following features:

- ...

## Folder Structure

- **lexicale.l:** The Flex source file containing lexer rules.
- **syntaxic.y:** The Bison source file containing syntax analyzer rules.
- **lex.yy.c:** The generated C file from Flex.
- **syntaxic.tab.c:** The generated C file from Bison.
- **syntaxic.tab.h:** Bison-generated header file.
- **README.md:** Project documentation.
