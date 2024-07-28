let rec list_size lst =
    match lst with
    | [] -> 0
    | _ :: tl -> 1 + list_size tl


let rec access lst index =
    match lst with
    | [] -> failwith "Empty"
    | hd :: tl -> if index = 0 then hd else access tl (index-1)


let reverse_list lst =
    let size = list_size lst in
    for i = 0 to size - 1 do
        Printf.printf "%d\n" (access lst (size - 1 - i))
    done;