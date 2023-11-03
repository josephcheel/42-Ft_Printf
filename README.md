<!--HEADER-->
<h1 align="center"> Ft_Printf | 
  <picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/42/white">
  <img alt="42" width=40 align="center" src="https://cdn.simpleicons.org/42/Black">
 </picture>
 Cursus 
  <img alt="Complete" src="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/dark-theme/complete.svg">
</h1>
<!--FINISH HEADER-->

> Recoded Printf function from Libc. And learn about variadic functions.

<img align="right" width="150" src="https://github.com/josephcheel/readme/blob/main/resources/100_Success.png">

### What is the project about
This project has two parts organized in two level of difficulty: the **mandatory** and the **bonus** part. **Mandatory** only manages character, string, pointer, decimal, interger, unsigned decimal, hexadecimal and <kbd>%</kbd> sign. **Bonus** part requires to manage <kbd>-0.# +</kbd> flags.
<kbd>ft_printf</kbd> project aims on learning the logic of having an unspecified number of arguments or **variadic functions**.

## General Instrucctions
* The project must compile with a **Makefile** without relinking.
* Makefile has to contain at least this rules: <kbd>$(NAME), all, clean, fclean and re</kbd>
* The project must compile with <kbd>-Wall -Wextra -Werror</kbd> flags.
* After compiling a library named <kbd><strong>libftprintf.a</strong></kbd> file has to appear.

#### To compile the project
```shell
> make
> gcc main.c libftprintf.a
> ./a.out
```
## Mandatory Instrucctions
### Requirements
Prototype of the ft_printf function: <kbd>int ft_printf(const char *, ...);</kbd>

The Mandatory implements the following conversions:
* <kbd>%c</kbd> Prints a single character.
* <kbd>%s</kbd> Prints a string (as defined by the common C convention).
* <kbd>%p</kbd> The void * pointer argument has to be printed in hexadecimal format.
* <kbd>%d</kbd> Prints a decimal (base 10) number.
* <kbd>%i</kbd> Prints an integer in base 10.
* <kbd>%u</kbd> Prints an unsigned decimal (base 10) number.
* <kbd>%x</kbd> Prints a number in hexadecimal (base 16) lowercase format.
* <kbd>%X</kbd> Prints a number in hexadecimal (base 16) uppercase format.
* <kbd>%%</kbd> Prints a percent sign.

Here are the requirements:
• You must use the command ar to create your library.
Using the libtool command is forbidden.
• Your libftprintf.a has to be created at the root of your repository
## Bonus Instrucctions

