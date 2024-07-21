let rec recursive_func () =
    print_endline "Enter a line, Press Exit to stop";
    let input = input_line stdin in
    if input = "exit" then print_endline "Exiting.."
    else begin
    for i = 0 to String.length input - 1 do
        print_char input.[i];
        print_newline();
    done;
    recursive_func();
    end;
;;