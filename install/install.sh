if (!-x command docker) {
    yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
}