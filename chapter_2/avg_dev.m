function [value] = avg_dev(x)
    value = 0;
    mean = mean(x);

    for sample = x,
        value += abs(mean-sample);
    end

    value *= 1/length(x);
endfunction
