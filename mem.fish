set -l parent_pids (pstree -Ap | grep "|\-fish" | grep -o "fish([0-9]*)" | grep -o "[0-9]*" | sed -E -e 's/[[:space:]]+/\n/g')
set -l n_of_pids (echo $parent_pids | wc -l)

set -l parent_pids (string split " " $parent_pids)


for i in $parent_pids
    pstree -p $i | head -n 1
end
