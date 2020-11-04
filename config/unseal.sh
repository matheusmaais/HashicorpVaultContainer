#!/bin/bash
vault operator init > /vault/config/key.txt
vault operator unseal $(grep 'Key 1:' vault/config/key.txt | awk '{print $NF}')
vault operator unseal $(grep 'Key 2:' vault/config/key.txt | awk '{print $NF}')
vault operator unseal $(grep 'Key 3:' vault/config/key.txt | awk '{print $NF}')
