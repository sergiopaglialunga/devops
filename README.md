# devops
## what is devops
devops is a new culture in IT departments that bridges the gap between 
the development and the operations teams.
It allows for faster delivery of software.

-working togheter: everyone is responsible for the whole software development
life cycle: plan - develop - build - test - deploy

-share responsibility: it eliminates the blame culture

-automation

-infrastructure as code 

### Benefits of DevOps

#### DevOps four key pillars

- easy of use: With DevOps, documentation does not come in the form of a user manual.
In DevOps environments, it is preferable for the code to speak for itself.
Documentation generators can be helpful here. 
When an instruction is reduced to run vagrant up and the steps
themselves are written as reproducible code, mistakes are much less likely to occur. Using configuration
management (CM) and Infrastructure as Code (IaC) can also serve as a good documentation.


- flexibility: Extending an ability to extend and replace the existing tool sets, DevOps lends a helping hand when it comes to sustaining future technologies. Facilitates business growth and change: DevOps help facilitate change and business growth, by ensuring best practices are followed at all given periods of time.

- robustness: System robustness is achieved by eliminating single points of failure in the system that would prevent successful transition. Often, the points of failure are related to people, technologies, tools or documentation.

- cost effective: DevOps drives better productivity from less staff, thereby curtailing the expenditure on development and operations personnel.


# Steps to have our virtual machine set up:

1- Install Vagrant

2- Install Virtual Box

3- For Windows users, after installing Virtual Box, we will need to manually install the drivers

4- Using Power Shell as administrator, we type the command sc start vboxdrv

5- We create a vagrantfile in the same folder where we have our GitHub repository with the instructions to create the virtual machine using Virtual Box

6- In the Git Bash terminal we type: vagrant up, this will create the virtual machine for us

7- With vagrant status, we check the status of the virtual machine

8- With vagrant ssh, we can access our virtual machine in the terminal

9- Finally, we updated Ubuntu, typing sudo apt-get update

10- exit - vagrant reload/halt 

### Linux - Ubuntu distro
- update `sudo apt-get update -y`
- upgrade `sudo apt-get upgrade -y`
- Who am I `uname` or `uname -a`
- Where am I `pwd` (print working directory)
- How to check files/folders in existing location `ls` or `ls -a`
- How to create a directory `mkdir dir_name` 
- Navigate to any folder - change dir `cd folder_name`
- How to change back to home location or any location `cd ..` or `cd` + enter
- How to create a file `touch file_name` or `nano file_name`
- To see the content of the file on terminal `cat file_name`
- How to copy file `cp location/file_name to destination_path`
- Create a folder called test in current location
- Cut & paste the file inside the test folder from current location `mv text.txt test` (file_name directory)
- How to delete them `rm -rf folder_name` (-rf deletes everythin that is inside the folder)
- How to check running processes (Task manager) `top` `ps aux` (more information)
- How to delete/remove/kill any process `kill pid` (process id)

### Permissions
- How to check permissions `ll`
- How to switch to `root user` `sudo su` (super user) (exit)
    it is not a good practice to use it on a daily basis    
- How to change permissions `chmod instruction file_name`
    `chmod +x file_name` `chmod 400 file_name`
- How to launch a process for 30 seconds `your_command timeout 30s`

- How to kill a process  `your_command sleep 30s`

