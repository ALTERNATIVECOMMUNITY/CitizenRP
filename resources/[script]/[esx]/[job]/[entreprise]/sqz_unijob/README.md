# SQZ_UNIJOB
Lets see, how to install the script: *(This script was made to help beginning server which are at the start to be easy to configure)*

__You can read the docs here__
[![Docs](https://img.shields.io/badge/docs-passing-brightgreen)](https://docs.squizer.cz)

# You are getting a source code. I trust you, so I expect it from you too. Keep your honor, do not share it, leak it or whatever you do it. Do not be a fucker as other leakers. This resource is only for you, not anyone else. Only you and your server as the right to use it. Everyone, do not rename it, resell it, republish it, claim it as yours or take any credits of it - if you do so, there is 11:10 chace of your server being blocked out of FiveM platform and I will DMCA this script out of your page/Discord/GitHub and whatever you will choose to do with this "illegaly". Namely: Majkkyware, please, do not rename it and resell it 😉 and you, Cryzysek, remember, the switchjob is not yours despite you renamed it as yours and took it as yours. 😉. Thank you for not being a retard which is not liked by anyone.

## Instalation:
```
1) Put "start sqz_unijob" into your resources folder
2) Run the SQL file
3) Put licenses you get on the Discord to the license.lua
4) Configure Config.lua
```
## Configuration:
```
1) Configure your Config, items eventually add items to database if you need so:
2) Edit events in client/edit.lua and server/edit.lua
```
### Creating new jobs:
```
1) Insert the job into "job_grades" & "jobs" table in the database
2) Insert the addon account into the "addon_account" table in format: "society_JOBNAME" where the JOBNAME is the name you set as a job
3) Check the server/edit.lua and if you want to use esx_society or phone for this job, you must register them as shown in the example
4) Duplicate Config.Jobs.sandy_mechanic, in the duplication change the "sandy_mechanic" to whatever you want to and configure it
```
*You can add as much jobs as you want to by this method.
You can remove any markers or make the markers more times duplicating them and changing the table index - you MUST keep the type same.*
## Requierements
- es_extended (using weight system)
- esx_menu_default and esx_menu_dialog
- esx_society
- esx_billing


## Discord
You can chceck my Discord where I can help with problems and etc. ...
https://discord.gg/FVXAu2F

## TOS:
- You are NOT allowed to share the code with other people that do not have access to it
- You are NOT allowed to try to decrypt it
- Any leaking and breaking the TOS may and WILL lead to blacklisting your IPs, ban from the Discord and adding you to the Blacklist.

### You can edit this resource only in config, client and server side part, you can't rename the script or re-release it as yours and sell it as yours. For suggestions contact me to the PM -> Squizer#3020