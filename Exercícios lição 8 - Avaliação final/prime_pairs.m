function p = prime_pairs(n)
p = 0;
for i = primes(100000)
    if isprime(i+n)
        p = i;
        break;
    end
end
if p == 0;
    p = -1;
end
end
    