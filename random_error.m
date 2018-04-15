% function returns array with errors at random positions
% bits_array arg should be array with int values 0 or 1
% error_prob arg should be int value between range 0-1
function error_array = random_error ( bits_array, error_prob )
	error_array = [];
	for bit = bits_array
		err = rand > error_prob;
		if ( err == 0 )
			bit = !bit;
			error_array(end+1) = bit;
		else
			error_array(end+1) = bit
		endif
	endfor
	return;
endfunction
