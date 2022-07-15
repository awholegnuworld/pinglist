#!/bin/bash
c=1;
s=64;
t=0;
if [[ $1 == "--file" ]] || [[ $1 == "-f" ]]; then
if [[ $3 == "--count" ]] || [[ $3 == "-c" ]]; then
c=$4;
fi;
if [[ $3 == "--size" ]] || [[ $3 == "-s" ]]; then
s=$4;
fi;
if [[ $3 == "--timeout" ]] || [[ $3 == "-W" ]]; then
t=$4;
fi;
if [[ $5 == "--count" ]] || [[ $5 == "-c" ]]; then
c=$6;
fi;
if [[ $5 == "--size" ]] || [[ $5 == "-s" ]]; then
s=$6;
fi;
if [[ $5 == "--timeout" ]] || [[ $5 == "-W" ]]; then
t=$6;
fi;
if [[ $7 == "--count" ]] || [[ $7 == "-c" ]]; then
c=$8;
fi;
if [[ $7 == "--size" ]] || [[ $7 == "-s" ]]; then
s=$8;
fi;
if [[ $7 == "--timeout" ]] || [[ $7 == "-W" ]]; then
t=$8;
fi;
tail -n +1 $2 | while IFS= read -r line; do ping -c $c -s $s -W $t "$line"; done;
else
if [[ $1 == "--help" ]]; then
echo "Usage: pinglist.sh [--file] [--count] [--size] [--timeout] [--help]";
echo "--file: File to read from";
echo "--count: Number of packets to send";
echo "--size: Size of packets to send";
echo "--timeout: Timeout for packets";
echo "--help: Prints this help message";
echo "--version: Prints the version of this script (-v)";
echo "--count, --size, and --timeout are optional, if not specified, defaults are used";
echo "--file is required";
fi;
if [[ $1 == "--version" ]] || [[ $1 == "-v" ]]; then
echo "pinglist Version 1. No Rights Reserved"
fi;
echo "Usage: pinglist.sh [--file] [file] [-f] [--count] [-c] [--size] [-s] [--timeout] [-W]";
echo "Use --help for more information"
fi;
