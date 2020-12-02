SHELL=/bin/bash
whoami=`whoami`

dependencies:
	sudo apt update
	sudo apt upgrade -y
	sudo apt install cmake -y

install: dependencies
	rm -rf l_openvino_toolkit_runtime_raspbian_p_2020.4.287.tgz
	wget https://download.01.org/opencv/2020/openvinotoolkit/2020.4/l_openvino_toolkit_runtime_raspbian_p_2020.4.287.tgz
	sudo mkdir -p /opt/intel/openvino
	sudo tar -xf l_openvino_toolkit_runtime_raspbian_p_2020.4.287.tgz --strip 1 -C /opt/intel/openvino
	rm -rf l_openvino_toolkit_runtime_raspbian_p_2020.4.287.tgz
	echo "source /opt/intel/openvino/bin/setupvars.sh" >> ~/.bashrc
	sudo usermod -a -G users "$(whoami)"
	source /opt/intel/openvino/bin/setupvars.sh && sh /opt/intel/openvino/install_dependencies/install_NCS_udev_rules.sh
	cd open_model_zoo && git checkout 2020.4
	sudo cp -R open_model_zoo /opt/intel/openvino/deployment_tools/
	cd /opt/intel/openvino/deployment_tools/ && sudo ln -s open_model_zoo/models/intel intel_models

uninstall: 
	sudo rm -rf /opt/intel/openvino