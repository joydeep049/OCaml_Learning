let rec recursive_func () =
    print_endline "Enter a line, Press Exit to stop";
    let input = input_line stdin in
    if input = "exit" then print_endline "Exiting.."
    else begin
        Printf.printf "%s\n" input;
        recursive_func();
    end;
;;

