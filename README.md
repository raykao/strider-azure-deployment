# Strider Continuous Deployment Azure Deployment Methods

This repo is meant to be an example of how to deploy using multiple methods.

## Method 1 azure vm extension script

Method one uses the ```deploy.sh``` script to install a working version of Strider CD.

Requirements:

1. Login to Azure-CLI (1.0 being in the examples below)
2. A resource group to deploy to
3. A Ubuntu VM (presumed to be 16.04.0-LTS)

You can deploy by making the ```deploy.sh``` script executable by copying to a local directory and running:

```
sudo chmod +x deploy.sh
```

Alternatively you can copy and paste:

```
azure vm extension set <resourceGroupName> <VMname> CustomScript Microsoft.Azure.Extensions 2.0 \
  --auto-upgrade-minor-version \
  --public-config '{"fileUris": ["https://raw.githubusercontent.com/raykao/strider-azure-deployment/master/bash/00.run.sh", "https://raw.githubusercontent.com/raykao/strider-azure-deployment/master/bash/01.create-strider-system-user.sh","https://raw.githubusercontent.com/raykao/strider-azure-deployment/master/bash/02.install-git.sh", "https://raw.githubusercontent.com/raykao/strider-azure-deployment/master/bash/03.firewall.sh", "https://raw.githubusercontent.com/raykao/strider-azure-deployment/master/bash/04.install-mongodb.sh", "https://raw.githubusercontent.com/raykao/strider-azure-deployment/master/bash/05.install-node.sh", "https://raw.githubusercontent.com/raykao/strider-azure-deployment/master/bash/06.install-strider.sh", "https://raw.githubusercontent.com/raykao/strider-azure-deployment/master/bash/07.daemonize-strider-pm2.sh"],"commandToExecute": "./00.run.sh"}'
```

Replacing ```<resourceGroupName>``` and ```<VMname>``` with the respective resources created in the above requirements.

## Known issues

1. ```arm_templates/base_deploy.arm.template.json``` - it seems that deploying as a single template script results in failure.
2. ~~```arm_templates/vm_extensions/setup_strider.arm.template.json``` doesn't complete final steps of daemonizing the process.  It also seems to run into the same issues as #3 below.~~ (solved see #1 below)
3. Running the command works, and completes quickly.  However in terminal/command line, it seems to run forever even thought the process completes behind the scenes.  "Long" running processes appear to not stop automatically...or have to 'timeout' at some point.

## Solved issues

1. Solved in commit [f5824403e660cc24c10012600d47bd0122e3dfd2](https://github.com/raykao/strider-azure-deployment/commit/f5824403e660cc24c10012600d47bd0122e3dfd2)
