# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# Credit: https://stefanwrobel.com/how-to-make-vagrant-performance-not-suck
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"
    #config.vm.box = "pronto-dashboard"

    # If true, then SSL certificates from the server will not be verified.
    # By default, if the URL is an HTTPS URL, then SSL certs will be
    # verified.
    #config.vm.box_download_insecure = true

    # File hosted on S3
    #config.vm.box_url = "https://s3-ap-southeast-1.amazonaws.com/pronto-vagrant-box/pronto-dashboard.box"
    # File hosted on fileshare.prontomarketing.com.
    #config.vm.box_url = "https://fileshare.prontomarketing.com:8001/fbdownload/pronto-dashboard.box?k=BQm1pmPl&stdhtml=true"

    config.vm.host_name = "vagrant"
    config.vm.network "private_network", ip: "33.33.33.30"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.cpus = 1
    end
end
