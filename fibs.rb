def fibs(n)
  if (n < 2)
    return n
  else
    fibs(n-1) + fibs(n-2)
  end
end

fibs(8)
fibs(0)
fibs(1)
fibs(16)