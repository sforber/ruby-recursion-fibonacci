def fibs(number)
    sequence = [0,1]
    for i in (0..number - 3)
        sequence.append(sequence[i] + sequence[i + 1])
    end
    return sequence
end

def fibs_rec(number)
    if number < 3
        return [0,1][0...number]            
    else
        fib = fibs_rec(number - 1)
        return fib << fib[-1] + fib[-2]
    end
end
