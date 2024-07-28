let rec sum_list lst =
    match lst with
    | [] -> 0
    | hd :: tl -> hd + sum_list tl