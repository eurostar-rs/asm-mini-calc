# Description
A mini calculator made in Assembly.
You need to enter 2 integers and you will get the following:
- the result of addition
- the result of subtraction
- the result of multiplication
- the result of division

## Example:

[screenshot](https://i.imgur.com/3tF9Xoz.png)


# Usage:

First, you need to install the template maker:

- install the libraries (`sudo apt install nasm gcc-multilib`);
- download the template maker in /home/{user} directory (`wget http://cs.unk.edu/~miller/templateMake.tar.gz`);
- extract it (`tar zxf templateMake.tar.gz`);
- install the template maker (`tar zxf templateMake.tar.gz`);
- make a directory located in /home/{user} with the name `projects` (`mkdir projects`);
- cd into the new `projects` directory (`cd projects`).

Then, you can clone the repository and use the mini calculator:

- clone the repository using `git clone https://github.com/GetALife/asm-mini-calc`;
- cd to the cloned repository (`cd asm-mini-calc`);
- do `make` or `nasm -f elf assembly.asm -o assembly.o && gcc -m32 -o assembly assembly.o asm_io.o /home/eurostar/templateMake/driver.c`;
- run the mini calculator with `./assembly`.
