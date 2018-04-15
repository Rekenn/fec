% generating array
function bits_array = rand_bits( array_size )
	bits_array = [];
	while array_size > 0
		bits_array(end+1) = rand > 0.5;
		array_size -= 1;
	endwhile
	return;
endfunction

% n-th bit will be reversed
function error_array =  cyclic_error( bits_array, nth_bit)
  error_array = bits_array;
  n = nth_bit; % constant value
  x = 1;
  while nth_bit <= length(bits_array)
    y = bits_array(nth_bit);
    z = xor(x, y);
    error_array(nth_bit) = z;
    nth_bit = nth_bit + n;
  endwhile
  return;
endfunction

bits_array = rand_bits(10);
bits_array;
disp(bits_array);

ea = cyclic_error(bits_array, 2);
disp(ea);
