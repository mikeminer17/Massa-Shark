#!/bin/bash
systemctl stop massad
. <(wget -qO- https://raw.githubusercontent.com/f5nodes/logo/main/logo-shark.sh)
echo
echo -e "\e[32mПочаток bootstraping\e[39m"
echo '[bootstrap]
max_ping = 10000
bootstrap_list = [
	["149.202.86.103:31245", "5GcSNukkKePWpNSjx9STyoEZniJAN4U4EUzdsQyqhuP3WYf6nj"],
	["149.202.89.125:31245", "5wDwi2GYPniGLzpDfKjXJrmHV3p1rLRmm4bQ9TUWNVkpYmd4Zm"],
	["158.69.120.215:31245", "5QbsTjSoKzYc8uBbwPCap392CoMQfZ2jviyq492LZPpijctb9c"],
	["158.69.23.120:31245", "8139kbee951YJdwK99odM7e6V3eW7XShCfX5E2ovG3b9qxqqrq"],
	["65.108.11.112:31245", "5AfpMs6GYr82qTgV4drHWwLeTH4kFMfkidzd7eC4JsbArYxfFM"],
	["185.225.232.227:31245", "7iJU5UrVWBZGZcdtkHUWrBgg5BGjnrRhFXmAVELeSTuDpPQSvu"],
	["194.233.71.97:31245", "8gbmLx3EYY5oEXd7P3xswLCwWstC5J8BHurVn6x2hNEuB6xghM"],
	["49.234.7.254:31245", "6xy62H4rPy7V8wcQ9L2ssyAdBgmbcdszb99jVxCvx9D9U4Dimp"],
	["65.108.46.114:31245", "8Nj31NW5trBb1L8qofmMZXMCCQELDGNfhcViHEY6QU7t17xkjG"],
	["89.108.71.233:31245", "5rDHwG5hnaneMc1j3mWitzf7bXTwDThFkKeHbLJchQnaCmN5yS"],
	["109.107.185.100:31245", "5fX8a8XxiaWzU7927Xn7f3ArKx146XAmjYUcqeqzSok217vrRd"],
	["176.57.184.238:31245", "8KNgJFdgfVqiCt5vuK9dxm5iVa23aQmQyPuSqrJvmqkUSv8tNa"],
	["159.223.62.255:31245", "7sWahZKxmCBm3KGuSVbDzVK7HR3JdZh4mgxfbAG7KNuWPvvSNX"],
	["185.137.122.62:31245", "8MksJGEsAd5vbjkPYtreou82EJ2AgqKzNSpzmnG2mKTEG22DVi"],
	["46.4.29.187:31245", "5BboqTtRhVmFUDz8NsrdfHnyJmqKwLbxevNcx3kuR5QvGbsW6T"],
	["65.108.93.46:31245", "8TLxSPfeCFXAfridg89Wvi86eTo91euMW9vrowxSqPqg5s1c1Z"],
	["109.205.182.32:31245", "7vrFyZcJmr4MejsbEvxKQHPJEYPQGaTQcHpFEVC8LepeY1UerV"],
	["185.205.244.248:31245", "5yXLeW9uWtwMVvdmfhVvNoZtUNs7y4HuCQWGQt8wchPFUFKNSX"],
	["138.201.117.171:31245", "72aQx1ov4FSktg1bWaUd2LtGr8CMzbYMjguQGqHZkEZjL4YDVj"],
	["94.103.82.186:31245", "6wN1nskA4U8NfJ3oSSvLV9BWp5AxFtadqV1NTfRTgeU63sayi1"],
	["194.233.87.52:31245", "8ZzcuJvfAmqXsA22kNV7TbeysASAvCzjPGG6kQZJQuvJeL7miL"],
	["95.216.252.32:31245", "7QzEVByNjepZXoALcVvce2nR8tgozhwSw3DrbKvXbLjPk5osFC"],
	["194.233.65.199:31245", "5RSE6uTCM7jwFLMHdRxYunpFiqyJANq9qUuwTczNKBdChD4GPn"],
	["45.135.92.85:31245", "6TbeJVYaG6TQGoDsKCyP1Q3Tur2ZjYrebyvDLyShuUPpHLpNLk"],
	["167.172.106.91:31245", "8FksMrNnPhamk9Wu5jdBxwgxwQGu3hxm8FAHkM4Lsgdr2X8e9q"],
	["65.108.61.60:31245", "8a7pMi6mDyWwQBvCS4P8ghQ4n7N2a9ta6YUoV6CyeHgTcqgZi8"],
	["49.12.234.168:31245", "67ugTcomEXJuSvh2TcqWu8L657RfpLT8uiNM893pJZdFbFV62G"],
	["95.217.17.70:31245", "8j3XFUaU3vL6zLtnqf4UgV9KQn3EabUrFZZTC71Bho7rry7SpT"],
	["38.242.200.191:31245", "6jPmog5n9nEaBXX3prHgh11RDAPaK13zDMHak2vAMocFLPQjyn"],
	["65.108.11.112:31245", "5AfpMs6GYr82qTgV4drHWwLeTH4kFMfkidzd7eC4JsbArYxfFM"],
	["185.225.232.227:31245", "7iJU5UrVWBZGZcdtkHUWrBgg5BGjnrRhFXmAVELeSTuDpPQSvu"],
	["194.233.71.97:31245", "8gbmLx3EYY5oEXd7P3xswLCwWstC5J8BHurVn6x2hNEuB6xghM"],
	["49.234.7.254:31245", "6xy62H4rPy7V8wcQ9L2ssyAdBgmbcdszb99jVxCvx9D9U4Dimp"],
	["65.108.46.114:31245", "8Nj31NW5trBb1L8qofmMZXMCCQELDGNfhcViHEY6QU7t17xkjG"],
	["89.108.71.233:31245", "5rDHwG5hnaneMc1j3mWitzf7bXTwDThFkKeHbLJchQnaCmN5yS"],
	["109.107.185.100:31245", "5fX8a8XxiaWzU7927Xn7f3ArKx146XAmjYUcqeqzSok217vrRd"],
	["176.57.184.238:31245", "8KNgJFdgfVqiCt5vuK9dxm5iVa23aQmQyPuSqrJvmqkUSv8tNa"],
	["159.223.62.255:31245", "7sWahZKxmCBm3KGuSVbDzVK7HR3JdZh4mgxfbAG7KNuWPvvSNX"],
	["185.137.122.62:31245", "8MksJGEsAd5vbjkPYtreou82EJ2AgqKzNSpzmnG2mKTEG22DVi"],
	["46.4.29.187:31245", "5BboqTtRhVmFUDz8NsrdfHnyJmqKwLbxevNcx3kuR5QvGbsW6T"],
	["65.108.93.46:31245", "8TLxSPfeCFXAfridg89Wvi86eTo91euMW9vrowxSqPqg5s1c1Z"],
	["109.205.182.32:31245", "7vrFyZcJmr4MejsbEvxKQHPJEYPQGaTQcHpFEVC8LepeY1UerV"],
	["185.205.244.248:31245", "5yXLeW9uWtwMVvdmfhVvNoZtUNs7y4HuCQWGQt8wchPFUFKNSX"],
	["138.201.117.171:31245", "72aQx1ov4FSktg1bWaUd2LtGr8CMzbYMjguQGqHZkEZjL4YDVj"],
	["94.103.82.186:31245", "6wN1nskA4U8NfJ3oSSvLV9BWp5AxFtadqV1NTfRTgeU63sayi1"],
	["95.216.252.32:31245", "7QzEVByNjepZXoALcVvce2nR8tgozhwSw3DrbKvXbLjPk5osFC"],
	["167.172.106.91:31245", "8FksMrNnPhamk9Wu5jdBxwgxwQGu3hxm8FAHkM4Lsgdr2X8e9q"],
]
connect_timeout = 15000
retry_delay = 60000
' > massa/massa-node/config/config.toml
systemctl restart massad
echo -e "Закінчено \e[32mbootstraping\e[39m, перевірте логи:"
echo -e "\e[32mmassa_log\e[39m або \e[32mjournalctl -n 100 -f -u massad\e[39m"