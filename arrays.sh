#!/bin/bash

declare -a people=('Mosheh EliYahu' 'Tommy Sleeky' 'Andrew White' 'Sam Smith')

echo "There are ${#people[@]} people in the list."
#echo "They are: ${people[@]}"
echo "They are:"
LAST_PERSON=${people[${#people[@]} - 1]}
SEP=", " 
for person in "${people[@]}"; do
    if [ "${person}" != "${LAST_PERSON}" ]; then
        echo -n "${person}${SEP}"
    else
        echo -n "${person}"
    fi
done
echo ""
echo "The first one is: ${people[0]}"
echo "And the last one is: ${people[${#people[@]} - 1]}"
