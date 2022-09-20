#PID - your PID
export STAGE="${USER:1}"

function unsetProxy(){
    unset bower_proxy  NO_PROXY http_proxy FTP_PROXY ftp_proxy ALL_PROXY bower_https_proxy HTTPS_PROXY https_proxy no_proxy HTTP_PROXY
    export HTTP_PROXY=''
    export HTTPS_PROXY=''
    export NO_PROXY=localhost,.national.com.au,.thenational.com,.nab.com.au,.nabdev.com.au,vpce.amazonaws.com,.ext.national.com.au,.appdynamics.com,\
.python.org,pypi.org,.pythonhosted.org,idp.nab.com.au,169.254.169.254,127.0.0.1,patching-server-hui.\ext.national.com.au,artifactory.ext.national.com.au,\
national.com.au,github.aus.thenational.com,artifactory.aus.thenational.com
    export http_proxy=$HTTP_PROXY
    export https_proxy=$HTTP_PROXY
    export no_proxy=$NO_PROXY
}

function setProxy(){
    unsetProxy

    # Set NAB proxies
    export {http,https,ftp}_proxy=http://proxy.nab.com.au:10091
    export {HTTP,HTTPS,FTP}_PROXY=http://proxy.nab.com.au:10091
    export {no_proxy,NO_PROXY}="localhost,.national.com.au,.thenational.com,.nab.com.au,.nabdev.com.au,vpce.amazonaws.com,\
.ext.national.com.au,.appdynamics.com,.python.org,pypi.org,.pythonhosted.org"
}

function samlf5(){
    docker run -it --rm -v ~/.aws:/home/samlf5/.aws cd.artifactory.ext.national.com.au/samlf5:0.4.0 "$@"
}

function samlf5login(){
    docker run -it --rm \
        -v ~/.aws:/home/samlf5/.aws \
        cd.artifactory.ext.national.com.au/samlf5:0.4.0 \
        --username $USER \
        -a $1 \
        -n $2
}
# Example: samlf5login pbelapinonprod 641238714531
# To access into financial profile AWS
# unsetProxy

export AWS_PROFILE=saml
export AWS_CA_BUNDLE=/usr/local/nab/certificates/nab-internal.cer

alias pfp="cd ~/Projects/financial-profile"
alias pls="cd ~/Projects/loan-structure-service"
alias pcli="cd ~/Projects/elp-cli"
alias bast="./batect start"
alias badevsh="./batect dev-shell"
alias ec2="ssh p821999@jumpbox.lz022.awsnp.national.com.au"
