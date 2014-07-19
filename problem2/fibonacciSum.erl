-module(fibonacciSum).
-export([getSum/0]).

% It is resversed, but doesn't matter to get the sum
generateFibonnaciSequence() ->
	generateFibonnaciSequenceAux(2,1,4000000,[1,2]).

generateFibonnaciSequenceAux(Ultimate,Penultimate,MaxNumber,Seq) ->
	Next = Ultimate + Penultimate,
	case Next =< MaxNumber of
		true -> generateFibonnaciSequenceAux(Next,Ultimate,MaxNumber,[Next|Seq]);
		false -> Seq
	end.

getSum() ->
	lists:sum([X || X <- generateFibonnaciSequence(), X rem 2 =:= 0]).

