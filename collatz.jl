function disprove_collatz(num::Int64)
    count = 1
    collatz = [0]
    collatz[1] = num

    while true 
        if (collatz[count] % 2 == 0)             
            push!(collatz, collatz[count] / 2)
            count = count + 1

            if ( collatz[count] == 1 )            
                break
            end                
        else            
            push!(collatz, (3 * collatz[count]) + 1)
            count = count + 1

            if ( collatz[count] == 1 )            
                break    
            end            
        end
    end

    println(collatz)
end

count = 0

while true
    global count = count + 1 
    disprove_collatz(count)
end
