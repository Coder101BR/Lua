function DecimalToBinary (dec,binTableInverseOrder, binTableCorrectOrder)
  local j = 1;

  repeat
    table.insert(binTableInverseOrder,dec%2)
    dec = math.floor(dec/2);

  until dec == 0

  for i=#binTableInverseOrder, 1, -1 do

    -- binTableCorrectOrder copies binTableInverseOrder in reverse order
    binTableCorrectOrder[j] = binTableInverseOrder[i];
    j = j + 1;
  end

end

binaryListInvOrder = {};
binaryListCorrectOrder = {};

DecimalToBinary(8, binaryListInvOrder, binaryListCorrectOrder);

for i=1, #binaryListInvOrder do
  print(binaryListInvOrder[i], binaryListCorrectOrder[i]);
end
