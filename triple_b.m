function bits_array = rand_bits( array_size )
	bits_array = [];
	while array_size > 0
		bits_array(end+1) = rand > 0.5;
		array_size -= 1;
	endwhile
	return;
endfunction

function triple_bits_array = triple_bits( bits_array, array_size )
	i = 1;
	while i <= array_size
		j = 1;
		while j <= 3
			triple_bits_array(end+1) = bits_array(i);
			j += 1;
		endwhile
		i += 1;
	endwhile
	return;
endfunction

bits_array = rand_bits(5);
bits_array;
tb = triple_bits(bits_array, 5);
disp(tb);
