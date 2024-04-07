# The Setup Shell Script

## Summary [tldr;]
Here at the Kubuntu community we want you to discover a friendly community, that is easy to get involved in.
This means removing barriers, and setting things up so they **'Just Work'**

[setup.sh](../setup.sh) is designed to do just that. It assumes that you're using Kubuntu or another Ubuntu flavour, and
it checks that you have the required tools installed on your system to be able to make changes and amendments to the
kubuntu.org website.

## In more detail

The setup.sh script handles the rudimentary set up tasks for a new local development environment for onboarding 
new contributors to the kubuntu.org project on GitHub.

### Here are the steps it performs broken down:

 - The initial large for loop, installs the hugo and git tools if they are not already installed.

 - The command command -v $cmd checks if the above commands are available on your system. If the command is not found, 
an attempt is made to install them using sudo snap install; The standard and error output of command -v $cmd is 
redirected to /dev/null, i.e., discarded, to avoid presenting confusing messages to the user.

 - After ensuring the necessary tools are installed, the script checks for a directory named Github in the user's home 
directory ($HOME). If the directory doesn't exist, it's created using mkdir "$HOME/Github".

 - The script then changes the current working directory to "$HOME/Github" with cd "$HOME/Github".

 - Then checks if there's a local clone of the repository. If not, it clones the kubuntu.org git repository from 
ricktimmis on GitHub into the current directory.
 - Once in the kubuntu.org directory, the script creates a new git branch named $USER"new-contributor". $USER expands to 
the current logged-in username, making the branch uniquely named for each user.
 - Finally, the script displays a welcome message echoing that the user is now on the new branch created.

This script is written in Shell Script which is often used for automating system administration and development tasks.

This script would help a new contributor get set up quickly to start contributing to the kubuntu.org project