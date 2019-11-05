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

I'll comment what that application does to source files, write readme for gcc, explain what is source file, what is header file, why we should make Makefile, etc. later. Just wanted to push these changes to Git real quick.

...to be continued soon. Hopefully tonight.
