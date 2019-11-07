Linux programming
=================

I started by creating GitHub account. You don't need one, but I can share stuff here easily and we don't have to share some fishy mails and packages. In case you feel need to create an account for yourself [click me](https://github.com/join).

Lesson #01
----------

Git is version control system which I decided to use for my projects. GitHub is platform that provides free Git repository hosting.
> GitHub is an American company that provides hosting for software development version control using Git.

In order to fetch code from GitHub we can start by installation of Git. Open terminal in your Parrot Linux and type

  `$sudo apt-get install git`

Dollar sign is not part of the command. It indicates you're using terminal as normal user. If you see # in your terminal you're about to execute commands as **sudo** which means commands are executed with superuser privileges which is bit dangerous if you don't know what you're doing.

If you're using default installation and Parrot account, root password is **toor**. It is needed to install software to Debian based Linux distributions with apt. apt is tool to handle  installation and removal of software on Debian, Ubuntu, and related Linux distributions.

If you want to verify installation and see which path Git was installed you can type following command to terminal

  `$which git`

Usually applications implement help functionality and following command will show help page of Git

  `$git --help`

Now we have Git, so we can fetch my project from the GitHub. When you open terminal it opens by default to your home folder. It's good place for random shit. Just type following command

  `$git clone https://github.com/drlotalota/linux-programming.git`

If you want to see what you're about to copy from GitHub to your local machine, you can browse content from [here](https://github.com/drlotalota/linux-programming) with browser.

Lesson #02
----------

If you cloned my project to your home folder you can now get latest codes from Git and compile simple Hello world. If you ever open terminal in some strange folder you can get back to home simply typing

  `$cd`

In command line # works as comment, so all text after # is ignored by bash. Above command is same as typing following command from bash point of view

  `$cd #This command will take you back to home folder`

Now you can go to your project folder using **cd** command. Just type

  `$cd linux-programming/`

We get back to Git later. Just fetch latest codes from repository using command

  `$git pull`

To compile main.c type to console

  `$gcc main.c -o fantastic`

To run main application you have to say terminal you want to execute application called fantastic from your current path ./ as follows

  `$./fantastic`

Lesson #03
---------

In lesson #02 we saw very simple application and process how you write and run C application. You write source code, compile it to executable and execute it. When we start adding more files to project it gets painful to compile from the command line. Compiling one main.c file is fairly simple

`$gcc main.c -o fantastic`

When we add some source files it starts to get annoying to update compiling command, not to mention when we get to libraries, compiler flags, compilation flags, folder structures and so on.

`$gcc main.c tools.c toiletbrush.c anaconda.c alarm.c -ali-g.c -o fantastic`

To make everything easier I created **Makefile**. It will take care of that complexity. It contains rules how to build application and gives them to **make** which is a build automation tool. Simple explanation from Wikipedia:

> In software development, Make is a build automation tool that automatically builds executable programs and libraries from source code by reading files called Makefiles which specify how to derive the target program.

Once you have created Makefile to your project you can skip gcc command and just type make in your project folder. So lets try. Pull latest codes from the project folder using pull.

`$git pull`

You should see now Makefile there. After that you can simply type make to compile your fantastic application

`$make`

I created target clean which removes executable as well. So if you want to be sure your latest changes are in your project you can first clean all the existing stuff from you project with commands

`$make clean`

It will delete your executable called fantastic. Often you want to clean your project first and then compile it. You can pipe commands in Linux with X && Y which means you execute first command X and if that does not fail you execute command Y. Few examples to understand

`$make clean && make && ./fantastic # If make clean does not fail, make is executed right after that and and if make commands does not fail you execute your fantastic application`

`$echo "I am the Great Cornholio! You can call me" && whoami # Will echo text to terminal, if that does not fail it tells you which user is logged to your Linux`

I'll push in generic Makefile in soon, but let's not pay attention for it yet. It's pain in the ass to work with. It just makes everything easier for now.
