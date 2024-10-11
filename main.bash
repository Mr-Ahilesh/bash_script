



rotate() {
    local arr=("$@")
    local n=${#arr[@]}
    local k=$1
    unset arr[0]
    arr=("${arr[@]}")

    for ((i=0; i<k; i++)); do
        temp=${arr[-1]}
        for ((j=n-2; j>=0; j--)); do
            arr[$((j+1))]=${arr[$j]}
        done
        arr[0]=$temp
    done

    echo "${arr[@]}"
}

read -p "Enter the elements of the array followed by the number of rotations: " -a inputArray
rotate "${inputArray[@]}"
