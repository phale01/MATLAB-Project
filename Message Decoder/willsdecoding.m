clear
clc


message = 'hellohappy';

alphabet = 'abcdefghijklmnopqrstuvwxyz';
letterFreq = zeros(1, length(alphabet));

for i = 1:length(message)
    dataCells{1, i} = message(i);
    currentLetter = strfind(alphabet, message(i));
    letterFreq(currentLetter) = letterFreq(currentLetter) + 1;
    
end


data
for j = 1:length(alphabet)
    [m, a] = max(letterFreq);
    locations = strfind(message, alphabet(a));
    dataCells{2, locations} = j;
end