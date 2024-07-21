let continue = ref true in
let i = ref 1 in
while !continue do
    if !i=5 then continue := false
    else begin
        Printf.printf "Value: %d\n" !i;
        i := !i + 1
    end;
done;
;;