# Deploy Seti at Home in the Cloud aka Pay4Seti aka Seti as a Service
 
- Got some free credits you want to waste?
- Looking for a different way to GIVE this year?

This will deploy a [Seti@Home](https://setiathome.berkeley.edu/) server in the cloud of your choice with [Terraform](https://www.terraform.io/).

That server will then churn at [100% until you turn it off](https://setiathome.berkeley.edu/top_hosts.php).

### You will be putting your $$$ into a big internet tube that shoots that money out into space to search for life!

![aliens](http://www.mcgilltribune.com/wp-content/uploads/2019/11/ancient-aliens-S12-desktop-2048x1152-copy-1-1000x500.jpg)

## How to use this repo
This repo is [Terraform](https://www.terraform.io/) code. 

You can download the [Terraform Binary](https://www.terraform.io/downloads.html) if you are already familiar. 
1. Copy the setiathome.auto.tfvars.example to setiathome.auto.tfvars
1. Uncomment the credentials line in the provider.tf 
1. Drop your gcp_credentials.json in the root gcp folder


For those that aren't as familiar you can sign up for a [free account on Terraform Cloud](https://app.terraform.io/signup/account). 
1. Fork this repo
1. Sign up for a Terraform Cloud account
1. Authorize a GitHub/BitBucket/ADO connection
1. Find this repo you just forked
1. Create a workspace from this repo
   * Set the working directiory to the cloud you want gcp/aws/azure

### [GCP](https://console.cloud.google.com/)
#### Required Variables
* [gcp_project_id](https://support.google.com/googleapi/answer/7014113?hl=en)
* [gcp_region](https://cloud.google.com/compute/docs/regions-zones/)
* [gcp_zone](https://cloud.google.com/compute/docs/regions-zones/)
* [boinc_project_id](https://boinc.berkeley.edu/wiki/Boinccmd_tool)
* [instance_type](https://cloud.google.com/compute/docs/machine-types)
* [gcp_credentials](https://cloud.google.com/docs/authentication/getting-started)

For Terraform Cloud, just enter the variables on the variables page in the workspace.

### AWS
#### Required Variables
* [boinc_project_id](https://boinc.berkeley.edu/wiki/Boinccmd_tool)
* [ssh_key_name](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
* [aws_access_key](https://aws.amazon.com/blogs/security/wheres-my-secret-access-key/)
* [aws_secret_key](https://aws.amazon.com/blogs/security/wheres-my-secret-access-key/)
* [aws_region](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)
* [instance_type](https://aws.amazon.com/ec2/instance-types/)


### Azure
#### Required Variables




### AliCloud
#### Required Variables
* [access_key](https://www.alibabacloud.com/help/doc-detail/29009.htm)
* [secret_key](https://www.alibabacloud.com/help/doc-detail/29009.htm)