function [value, ret_length, ret_sample_sum, ret_sample_square_sum] = std_dev_run(samples, processed_length = 0, sample_sum = 0, sample_square_sum = 0)
  ret_length = processed_length + length(samples)
  ret_sample_sum = sample_sum + sum(samples)
  ret_sample_square_sum = sample_square_sum + sum(samples.^2)

  value = 1/(ret_length - 1) * (ret_sample_square_sum - 1/ret_length * ret_sample_sum^2);
endfunction
