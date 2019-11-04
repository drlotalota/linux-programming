Linux programming
=================

I started by creating GitHub account. You don't need one, but I can share stuff here easily and we don't have to share some fishy mails and packages. In case you feel need to create an account for yourself [click me](https://github.com/join).

Lesson #01
----------

Git is version control system which I decided to use for my projects. GitHub is platform that provides free Git repository hosting.
> GitHub is an American company that provides hosting for software development version control using Git.

Open terminal in your Parrot Linux and type

  `$sudo apt-get install`

Dollar sign is not part of the command. It indicates you're using terminal as normal user. If you see # in your terminal you're about to execute commands as **sudo** which means commands are executed with superuser privileges which is bit dangerous if you don't know what you're doing.

If you're using default installation and Parrot account, root password is **toor**. It is needed to install software to Debian based Linux distributions with apt. apt is tool to handle  installation and removal of software on Debian, Ubuntu, and related Linux distributions.

If you want to verify installation and see which path Git was installed you can type following command to terminal

  `$which git`

Now we have Git, so we can fetch my project from the GitHub. When you open terminal it opens by default to your home folder. It's good place for random shit. Just type following command

  `$git clone https://github.com/drlotalota/linux-programming.git`

If you want to see what you're about to copy from GitHub to your local machine, you can browse content from [here](https://github.com/drlotalota/linux-programming) with browser.
