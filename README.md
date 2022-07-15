
# pinglist

A bash tool that utilizes ping to check the status of a list of IPs/domain names in a file.

## Features

- Can ping IPs or domain names from a txt file.
- Can use the 'count' option from ping.
- Can use the 'timeout' option from ping.
- Can use the 'size' option from ping.
## Installation

Install pinglist by downloading the shell file and adding it to your .bashrc file.

```bash
  wget -O pinglist.sh https://raw.githubusercontent.com/awholegnuworld/pinglist/master/pinglist.sh?token=GHSAT0AAAAAABWD7P5NTA6K5MC2LAQ75F5QYWRYHHA
  mv ./pinglist.sh /usr/local/bin/pinglist.sh
  echo "alias pinglist='/usr/local/bin/pinglist.sh';" > ~/.bashrc
```
    
## License

[The Unlicense](https://choosealicense.com/licenses/unlicense/)

