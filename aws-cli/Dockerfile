FROM registry.fedoraproject.org/fedora:latest

RUN dnf -y install python3-boto3.noarch unzip bash-completion \
&& mkdir /aws-cli \
&& cd /aws-cli \
&& curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
&& unzip /aws-cli/awscliv2.zip \
&& rm -f /aws-cli/awscliv2.zip \
&& /aws-cli/aws/install \
&& cd / \
&& rm -rf /aws-cli \
&& dnf clean all \
&& rm -rf /var/cache/yum \
&& echo 'complete -C '/usr/local/bin/aws_completer' aws' >> /etc/bashrc