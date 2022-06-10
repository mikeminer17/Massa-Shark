#!/bin/bash
systemctl stop massad
. <(wget -qO- https://raw.githubusercontent.com/f5nodes/logo/main/logo-shark.sh)
echo
echo -e "\e[32mПочаток bootstraping\e[39m"
echo '[bootstrap]
max_ping = 10000
bootstrap_list = [
  ["65.108.4.181:31245", "245Rp2YurngBdgadxfSsEdHLUCzBPTDMNVZbBwTtmTeNdMoY5H"],
  ["62.109.25.81:31245", "kYGkkNePY6AHZz2WPEqsqK964bsYmXuTHy5P7KDCxttAG5rN4"],
  ["94.103.85.96:31245", "2rtvVxjbCaGVL1dt1ihyB3jR8B1ctKsVoESyyUW8dPDHs9XTFp"],
  ["185.234.69.118:31245", "2hf1USrDsXfZ5mEhq2dqinRfGSNXpwDCvKdktGM8AatsSxszSQ"],
  ["38.242.252.53:31245", "HB5bjJRawrU77xRFg43ZEa1Wfg4uXMEfMgH8Lk4tkaEomAZHf"],
  ["167.71.221.52:31245", "tkkFiKDZY6BnMxsMxq2z8hjNJus3sBwwFWPnSa2McctqQkQPY"],
  ["194.147.58.206:31245", "2DyhutF4Fyf8XHRLTcJXs7VaySz28X1WrYzSzBcLFotPSeZ2hw"],
  ["173.249.56.88:31245", "2YCToRyeFS9didL88SQXDydNUVmVWer9ZgQvXayKj6fpnKkEmS"],
  ["213.133.101.78:31245", "2YvLArAUBcyEYKNqvgp3HwP5GGXBRmia15AfL7zwpqfDXuj7DL"],
  ["135.181.250.24:31245", "2RvPZDDVAgBjCqPe7sGxprqS7Np93uLu2frBQJns294VZR94up"],
  ["161.97.132.122:31245", "jvLt8sdMeLqaqkv4iEmerogBDCRZrraTTKXRYEqYeqqtK1zVQ"],
  ["5.189.151.175:31245", "dNv2Mr63fQwYAPmRjF5M9qoYJ3fF66LH3SCB8twR1RU5qcwNJ"],
  ["109.14.181.146:31245", "2tyACyyWRYi5JU3iVZ4Ckup4z3xD42T95BU1ta7GgmyfWX2NHF"],
  ["65.108.52.211:31245", "2QP4qvVMfkCLsw9jRadX8gtM7NNKTn3EfZE9sNBDtPZ5Ygdth8"],
  ["151.106.8.63:31245", "DmR3ZDQnfJRPZofs2MaFJeWVhQ4H1LoWdu7Lit8E4jGUq791Q"],
  ["194.163.146.200:31245", "Um7XavonYKe9daVTYyPJZNpEJefd4Wwe7APMFkypKBJ1kSAxA"],
  ["5.189.134.165:31245", "tSBCswF2c4QZg9htveZeXLbX4mkwhFuVojfqqeB6GL6Ru4yHy"],
  ["51.222.153.53:31245", "uVuK8uGMzfC81eHxEZaM8uRU525nsxru1AwTJaRpiEu1qV8xa"],
  ["65.21.109.174:31245", "28cLZjMe4YzNVEnwCx7pjvQXGyuomW4umVcF78Vh1Ui2UTYvvK"],
  ["45.12.19.74:31245", "2jUSBY6o3gZFfuKZeuKJ68FiKG9JLHTMo33PKEp6ytZLibSPvF"],
  ["77.232.41.22:31245", "fk5NLkHwSXtxaD6pv5hnx98kDYzVrStBQHDDWzZ2UrvAwtUXL"],
  ["89.179.244.216:31245", "1MwsReGuy2FYqRrcebLn9R2U2zbTQeJ4caEGDXMvNnypqm8o4"],
  ["135.181.157.63:31245", "Kx5oPVjFCjoUEcELjsiLf96iAVnSiExLJftZj91ef3t2QL3W1"],
  ["38.242.200.190:31245", "Nonj4iod7SN6G5ktrRMsAYucpCd9gci3pKXUkrSFTUXdbwhGx"],
  ["89.22.231.121:31245", "2WuN31VG885U6X8FGrw1KLMWpJuiS9vuw7whSJLE8SUvDbxC1k"],
]
connect_timeout = 15000
retry_delay = 60000
' > massa/massa-node/config/config.toml
systemctl restart massad
echo -e "Закінчено \e[32mbootstraping\e[39m, перевірте логи:"
echo -e "\e[32mmassa_log\e[39m або \e[32mjournalctl -n 100 -f -u massad\e[39m"
