function [value] = std_dev(x)
    value = 0;
    mean = mean(x);

    for sample = x,
        value += (sample - mean)^2;
    end

    value = value / (length(x) - 1);
endfunction
