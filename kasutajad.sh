#!/bin/bash
FAIL=$1
KURSUS=$2
VANUS=$3

while read enimi pnimi sugu vanus; do
	echo "$enimi $pnimi $vanus aastane õpib $KURSUS kursusel"
done < "$FAIL"
