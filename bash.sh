name="Alex Winland"

last_number=$(ls ${name}* 2>/dev/null | grep -oE "[0-9]+" | sort -n | tail -n 1)

if [[ -z "$last_number" ]]; then
    start=1
else
    start=$((last_number + 1))
fi

end=$((start + 24))
for ((i=start; i<=end; i++)); do
    touch "${name}${i}"
done

ls -l