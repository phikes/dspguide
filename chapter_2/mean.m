function [value] = mean(x)
    value = 0;

    for sample = x,
        value += sample;
    end;

    value = value / length(x);
endfunction
