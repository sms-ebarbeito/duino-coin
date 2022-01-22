if [[ -z "${USERNAME}" ]]; then
  export USERNAME="kriketronic"
fi

if [[ -z "${INTENSITY}" ]]; then
  export INTENSITY="95"
fi

if [[ -z "${THREADS}" ]]; then
  export THREADS="2"
fi

if [[ -z "${DONATE}" ]]; then
  export DONATE="0"
fi

if [[ -z "${DIFFICULTY}" ]]; then
  export DIFFICULTY="MEDIUM"
fi

if [[ -z "${RIG}" ]]; then
  export RIG=$(hostname)
fi

# Edit the config file if environment variables set else use defaults
echo "[PC Miner]
username = ${USERNAME}
intensity = ${INTENSITY}
threads = ${THREADS}
start_diff = ${DIFFICULTY}
donate = ${DONATE}
identifier = ${RIG}
algorithm = DUCO-S1
language = english
soc_timeout = 45
report_sec = 60
discord_rp = y" > 'Duino-Coin PC Miner 3.0'/Settings.cfg

# Start the miner
/app/PC_Miner
exit