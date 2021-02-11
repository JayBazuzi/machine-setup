# How to setup a Windows AWS EC2 instance for remote mobbing and pairing

June 24th, 2020

By Clare Macrae, Jay Bazuzi, & Llewellyn Falco

Note: this is a work in progress document, please feel free to email/tweet suggestion to us

*TL;DR*: 
- clone [this repo](https://github.com/LearnWithLlew/TestingLegacyCodeCourse.cpp/blob/master/Resources/install_script_example.ps1)
- modify Resources/install_script_example.ps1 for your needs
- Create a Windows virtual machine in the cloud
- Run the script in the new VM.

With lots of people working from home, Mobbing and Pairing remotely is a bit harder. One solution we’ve found to work well is setting up a virtual machine in the cloud and having everyone remote into that machine.

![Image of working a remote team working on one person's host](images/traditional.png)
*......... image ...............*
*......... image ...............*

Here are some indicators that this might be right for you:

# Internet Issues
Sharing a computer on your home network can limit the bandwidth for everyone else. This is amplified because most connections are asymmetric, with a faster download than upload. 

If we put the pair/mob server in the cloud, nobody is uploading much from their machine. On top of that, the upload is coming from Amazon or Azure or Google Cloud Platform, which have a very good internet pipe. 

Also, a single person dropping out does not stop the whole team. 

## Machine Setup
Another problem pairs/mobs sometimes experience is having inconsistent tools installed on everybody’s machines.

A dedicated server in the cloud can be configured according to the team agreement instead of personal taste. When that agreement changes, update the script and create a new instance.

If a group wants to split into smaller mobs or pairs, it’s easy to spin up multiple instances.

## Equality in typing
When you are serving off of someone’s local machine, there is a huge latency advantage to the host doing the typing. Personal machines may have customisations that would trip up other users. This makes it tempting to let one person do the typing the whole time.

Putting the machine in the cloud makes it so everybody can type equally, and the lag is nearly non-existent.

## Advantages
Having a remote server in the cloud solves these problems, while making a cheap, consistent, and disposable environment.

## Disadvantages
You are limited on server choice, and Mac servers are not available. 

You need to remember to turn it off when you are not using it. Remember to turn off the instance when done.

You will need a credit card for all but the slowest machines.

Your company’s policy might not allow the expenditure, or putting source code somewhere in the cloud, for example.

The server is internet-addressable, so hackers will be attacking it directly.

# How to do it

## Part 1: Create up an EC2 instance
Start a Microsoft Windows Server 2019 Base - ami-0c1ee26e489972734 t2.large (8GB RAM, 2CPU, $0.09/hr) instance. Pick a region close to your audience. In the Storage settings increase the default disk size, especially if you're installing Visual Studio.

Pricing: https://aws.amazon.com/ec2/pricing/on-demand/

Be sure to save the private key. Private keys are region-specific. We suggest naming the keys like this:
`Llewellyn.ohio.2020.pem`, `Clare.london.2020.pem`, `Jay.us-west-2.2020.pem`

It will take about 10 minutes for the instance to come online.

## Part 2: Initializing your instance

Log in to the instance with Remote Desktop.

Open PowerShell as Administrator and run your customized script.

Here are two examples you can build on. Clone it and modify to your liking. (Share with us so we can learn more about this.)

- https://raw.githubusercontent.com/refactoring-pipelines/Pipelines/main/machine-setup.ps1
- https://github.com/LearnWithLlew/TestingLegacyCodeCourse.cpp/blob/master/Resources/install_script.ps1
- (TODO: link to entries in the current repo)

Also remember to clone the Git repo you want to work in.

### About PowerShell

PowerShell is the modern Windows shell.

The 2nd line in our example scripts will download and execute the script. You can also copy the contents and paste it into the PowerShell window. Up to you.

### About Chocolatey

Chocolatey is a package manager for Windows, similar to yum, apt-get, or brew. It is built on top of NuGet and it allows you to install software from the command line without interaction. Most popular software programs have a Chocolatey package.

### About the TestingLegacyCodeCourse example

Installs common tools needed for most environments and Mob Programming, and a C++ environment on CLion. 

Also makes a desktop background image on the machine. Making this visually distinct is extremely helpful when logging in with AnyDesk.

*......... image ...............*

## Manual Setup Steps

Some applications (like MobTime) require manual configuration. The script can open a browser for a human to do those steps.

Apply licenses as needed.

# How to Host

1. Launch the instance. 
1. If it’s not a new instance, update applications and OS patches.
1. Launch AnyDesk
1. Share the AnyDesk code with everyone else
1. When they connect, disable every option except `Allow to Take Control` and `Allow to Hear Sound`

*......... image ...............*

A problem with AnyDesk is that often people unintentionally move the mouse in the remote session. There are two ways to solve this problem:

- When you’re not the typist, keep your hands off the mouse.
- When you’re not the typist, locally disable Take Control in your AnyDesk client.

6. Remember to turn off the instance when done.

A running instance costs real money, so if you forget then you’ll get charged for CPU. If you turn the instance off you’ll only get charged for storage which is super cheap. When you’re done with an instance, Terminate it to avoid even this fee.



# Security

The server is internet-addressable, so hackers will be attacking it directly.

Either discard it after each session, or apply Windows Updates and other software updates promptly.

Be judicious about what you log in to. For example, maybe log in to GitHub but not your password manager, and make sure two-factor auth is enabled for your GitHub.

Enable 2-factor authentication in GitHub and anything else you log in to from the VM.

Instead of logging in to GitHub with your password, you can use a personal access token: https://github.com/settings/tokens
