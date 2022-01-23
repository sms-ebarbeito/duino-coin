# Run your DuinoCoin Miner on Docker!


Inspired by mpdra/duinocoin, but clean rebuild of the container with version 3.0 of the Linux version of PC_miner and all necessary libraries pre-installed on a Debian base system.

## Installation

run docker command:

```bash
docker run -e USERNAME="kriketronic" -e INTENSITY="100" -e THREADS="4" -e DIFFICULTY="MEDIUM" -e RIG="MyRig" --restart=unless-stopped kriketronic/duino-coin
```

## Usage Envs

```python
USERNAME	"Your Duinocoin wallet username"	
INTENSITY	1 - 100	50
THREADS	1 - 100	1
DIFFICULTY	LOW, MEDIUM or NET	LOW
RIG	"Name you want to identify your miner with"	hostname
DONATION 0 - 5 "how much power do you want to donate to duinocoin"
```
More information can be found on the Duinocoin website.
