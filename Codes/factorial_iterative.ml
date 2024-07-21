// With return type
let factorial x =
    if x = 0 then 1
    else if x = 1 then 1
    else begin
        let a = ref 1 in
        for i=2 to x do
            a = !a * i 
        done;
        !a
    end;

// Unit() return type
let factorial x =
    let res = ref 1 in
    for i = 2 to x do
        res := !res * i
    done;
    Printf.printf "Factorial of %d is %d\n" x !res;
    