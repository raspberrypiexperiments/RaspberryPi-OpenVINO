# RaspberryPi-OpenVINO

This repository includes installation procedure for OpenVINO 2020.4.287.

## Known supported Raspberry Pi

* Raspberry Pi 3B,
* Raspberry Pi 4B.

## Installation Procedure

```bash
~ $ git clone --recurse-submodules -j4 https://github.com/raspberrypiexperiments/RaspberryPi-OpenVINO.git
~ $ cd RaspberryPi-OpenVINO
~/RaspberryPi-OpenVINO $ make install
```

## Unistallation procedure

```bash
~/RaspberryPi-OpenVINO $ make uninstall
~/RaspberryPi-OpenVINO $ cd ..
~ $ rm -rf RaspberryPi-OpenVINO
```

## License

MIT License

Copyright (c) 2021 Marcin Sielski <marcin.sielski@gmail.com>
