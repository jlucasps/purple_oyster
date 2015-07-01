============
Purple Oyster
============

#### What is this project?
I don't know yet.

#### How is it structured?
Each file under ````answers/```` contains a challenge that you have to solve.

The file ````scenarios/001.sh```` will setup the environment so you can write your code in the file ````answers/001.sh````, and it will be test by ````test/001.bats````.

<pre>
├── Vagrantfile         # Vagrant file
├── bootstrap.sh        # Shell script to provision the machine
├── answers
│   ├── 001.sh          #
│   ├── 002.sh          # Your code goes here (work here)
│   └── 003.sh          #
├── scenarios
│   ├── 001.sh          #
│   ├── 002.sh          # Scripts used to setup the environment  (don't touch)
│   └── 003.sh          #
└── test
    ├── 001.bats        #
    ├── 002.bats        # Automated test to verify your answers (don't touch)
    ├── 003.bats        #
    └── all.sh          # Run all tests in a loop (don't touch)
</pre>

#### How to use this project?

The first step to run this project is clone the git repo.

 - Copy the git URL and type in the console
````sh
git clone git@github.com:gustavo-freitas/purple_oyster.git
````

 - Then navigate to the folder just created
````sh
cd purple_oyster
````

The next steps depends on ````vagrant```` to be installed in your machine. If you don't have yet, follow the installation steps here: http://docs.vagrantup.com/v2/installation/index.html

 - After installing vagrant, execute
````sh
vagrant up
````

It will boot the virtual machine described by the Vagrant file and will provision it by calling the ````purple_oyster/bootstrap.sh```` file. This file is responsible to configure the environment for you. (Go get a coffee while you machine is booting)

 - After vagrant up complete, you can ssh into the machine
````sh
vagrant ssh
````
 - And run the tests
````sh
vagrant@vagrant-ubuntu-trusty-64:~$ bash /vagrant/test/all.sh
````
It will block the screen executing all test files at every 2 seconds. Type ````ctrl+c```` to quit the test loop.

 - Now open you favorite text editor and add some code in the file ````answers/001.sh````to see the test results changing.

 - Keep adding code in the folder ````answers/```` to solve the challenges untill all test are passing.
