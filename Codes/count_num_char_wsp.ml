let rec count_num_char () =
    let is_alpha c = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') in
    let is_digit c = c >= '0' && c <= '9' in
    print_endline "Enter a string, press exit to stop";
    let input = input_line stdin in
    if input = "exit" then print_endline "Exiting"
    else begin
        let charc = ref 0 in //Create a mutable reference
        let num = ref 0 in
        let wsp = ref 0 in
        for i = 0 to String.length input - 1 do
            let character = input.[i] in
            if is_alpha character then
            charc := !charc + 1
            else if is_digit character then
            num := !num + 1
            else if character = ' ' then
            wsp := !wsp + 1
        done;
        Printf.printf "Characters: %d\n" !charc;
        Printf.printf "Numbers: %d\n" !num;
        Printf.printf "WhiteSpaces: %d\n" !wsp;
        count_num_char()
    end;
;;