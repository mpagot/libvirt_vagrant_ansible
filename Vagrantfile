Vagrant.configure("2") do |config|
  config.vm.define :test_vm do |test_vm|
    test_vm.vm.box = ENV['IMAGE_NAME']
    test_vm.vm.box_url = ENV['IMAGE_URL']
    test_vm.vm.provision "ansible" do |ansible|
      ansible.verbose = "v"
      ansible.playbook = "ansible/playbook.yaml"
    end
  end
end
