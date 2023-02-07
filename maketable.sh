cd ~/gasprices   # make sure we are in the right place
cut -d ';' -f 5 carburants.csv | tr [:lower:] [:upper:] | sort | uniq -c | sort
