function numMatches = characterHasMatch(char)
% hasMatch = vectorHasMatch(v)
% returns number of matches each character in a string has

%% Set Parameters

Nv = length(s);
%length of v

k = 1;
%counter

Match = 0;
%% Check Values

while (k < Nv) 
    
    if sv(k) == sv(k+1)
    
        Match = Match + 1;
    
    end
    
    k = k + 1;
end