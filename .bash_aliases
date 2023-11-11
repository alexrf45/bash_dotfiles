#aws cli aliases
alias ec2-check='aws ec2 describe-instances --query "Reservations[*].Instances[*].{PublicIP:PublicIpAddress,PrivateIP:PrivateIpAddress,Name:Tags[?Key=='Name']|[0].Value,Type:InstanceType,Status:State.Name,VpcId:VpcId,Id:InstanceId}" --filters "Name=instance-state-name,Values=running" --output table'

alias s3-list="aws s3api list-buckets | jq -r '.Buckets[].Name'"

alias obsidian-backup-s3='aws s3 sync ~/r0land-notes/r0land/. s3://r0land-obsidian'

#aws_vault aliases
alias awsv='aws-vault exec Administrator'

#-----------------------------------------GIT ENV & aliases---------------------------------------------
alias review='git log --graph --oneline --decorate'

#daily drivers for day to day tasks
alias http='sudo python3 -m http.server 80'
alias reload='. ~/.bashrc'
alias update='sudo apt-get update -y'
alias i='sudo apt-get install -y'
alias t='tmux -f ~/.tmux.conf'
alias public='curl wtfismyip.com/text'
alias py='python3'


#--------------------------------------------------Docker-----------------------------------------------------------------------
#dockeraliases for general use
alias dockim='docker image'
alias dock='docker'
alias dockc='docker container'
alias prune='docker container prune'
alias docknt='docker network'

#dockerer-compose
alias dockup='docker-compose up -d'
alias dockdown='docker-compose down'
alias sec='/usr/bin/git --git-dir=/home/f0nzy/.cfg/ --work-tree=/home/f0nzy'
