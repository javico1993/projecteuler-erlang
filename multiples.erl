-module(multiples).
-export([getSum/0]).

%%Problem: Find the sum of all the multiples of 3 or 5 below 1000.

getSum() ->
	F = fun(X,Sum) -> 
			case (X rem 3 =:= 0) orelse (X rem 5 =:= 0) of
				true -> Sum + X;
				false -> Sum
			end
		end,
	lists:foldl(F,0,lists:seq(1,999)).