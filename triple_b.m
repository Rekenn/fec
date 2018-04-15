% function creates array of random bits
% array_size arg defines size of array
function bits_array = rand_bits( array_size )
	bits_array = [];
	while array_size > 0
		bits_array(end+1) = rand > 0.5;
		array_size -= 1;
	endwhile
	return;
endfunction

% function triples bits of array passed in argument
function triple_bits_array = triple_bits( bits_array )
	for bit = bits_array
		j = 1;
		while j <= 3
			triple_bits_array(end+1) = bit;
			j += 1;
		endwhile
	endfor
	return;
endfunction
