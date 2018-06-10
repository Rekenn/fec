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

% function decodes tripled bits array
function decoded_array = decode_bits( bits_array )
	element = 0;
	count = 0;
	decoded_array = [];
	for bit = bits_array
		if ( bit == 0 )
			element += 1;
		endif
		if ( mod(count, 3) == 2 )
			if ( element > 1 )
				decoded_array(end+1) = 0;
			else
				decoded_array(end+1) = 1;
			endif
			element = 0;
		endif
		count += 1;
	endfor
	return;
endfunction
