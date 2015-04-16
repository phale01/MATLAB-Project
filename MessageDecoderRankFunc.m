%% MessageDecoderRankFunc.m
% Decrypts a coded message uploaded into MATLAB using the ranking of
% frequency. 


% function MessageDecoderFunc(handles)

clear;
clc;

%% Upload Image

% fileName = handles.BrowseText.String;
% 
% Mimage = imread(fileName);


%% Stores Message

message = input('Please enter encrypted message:', 's');

messageLength = length(message);

alphabetF{3, messageLength} = zeros;

%stores each character in the first row of the cell
for u = 1:messageLength
    
    alphabetF{1, u} = message(u);
end

%% Set Parameters

%Creates an array arranging letters according to frequency largest to
%smallest
letterRankArray = ['e', 't', 'a', 'o', 'i', 'n', 's', 'h', 'r', 'd', 'l', ...
    'c', 'u', 'm', 'w', 'f', 'g', 'y', 'b', 'p', 'v', 'k', 'j', 'x', ...
    'q', 'z'];


letter = 0; %initializes number of time a character appears

letterFreq = 0; %initializes letter frequency

letterFreqArray = zeros(1, messageLength);

sorted = false;

spaceNum = 0;
%% Frequency
%removes spaces
for k = 1:messageLength
    
    if message(k) == ' '
        
        spaceNum = spaceNum + 1;
    end
    
end

%Stores the frequency of each symbol in the second row of the cell 
for u = 1:messageLength - spaceNum
    
    %skips spaces
    if message(u) == ' ' 
        u = u + 1;
    end
    
    for v = 1:messageLength-1
       
        %finds characters that match and counts how many there are
        if message(u) == message(v+1)
            
            letter = letter + 1;
        else
        end
        
    end
    %calculates frequency of the character
    letterFreq = letter/(messageLength - spaceNum);
    
    %stores the frequency of the letter
    letterFreqArray(u) = letterFreq;
    
    alphabetF{2 , u} = letterFreqArray(u);
    
    %restarts the count
    letterFreq = 0;
    letter = 0;
end
%% Sort

%restrict number of characters so that letters will only have one frequency
%Tl;dr Removing repeat characters
for u = 1:messageLength
    for v = u:messageLength-u
        if message(u) == message(v+1)

            alphabetF{1, v+1} = [];
            alphabetF{2, v+1} = [];

        end
    end
end

%Sorts the frequencys in alphabetF largest to smallest (second row of cell
while ~sorted
    
    y = 5;
    
    for u = 1:messageLength - 1
            if  alphabetF{2, u} < alphabetF{1, u+1}
                
                larger = alphabetF{2, u+1};
                smaller = alphabetF{2, u};
                
                largerLetter = alphabetF{1, u+1};
                smallerLetter = alphabetF{1, u};
                
                alphabetF{2, u} = larger;
                alphabetF{2, u+1} = smaller;
                
                alphabetF{1, u} = largerLetter;
                alphabetF{1, u+1} = smallerLetter;
                
                y = y - 1;
            elseif alphabetF{2, u} == []
                
                larger = alphabetF{2, u+1};
                smaller = alphabetF{2, u};
                
                largerLetter = alphabetF{1, u+1};
                smallerLetter = alphabetF{1, u};
                
                alphabetF{2, u} = larger;
                alphabetF{2, u+1} = smaller;
                
                alphabetF{1, u} = largerLetter;
                alphabetF{1, u+1} = smallerLetter;
                
                y = y - 1;
            end
        end
        if y == 5 && u == length(messageLength - 1)
            
            sorted = true;
        end
        
    end
    


%% Match
%matches frequencies to letter
for v = 1:26
   
    alphabetF{3, v} = letterRankArray(v);
    
end
%% Display possible letters

% handles.APanel.Value = alphabetF{3,3};
% handles.BPanel.Value = alphabetF{3,19};
% handles.CPanel.Value = alphabetF{3,12};
% handles.DPanel.Value = alphabetF{3,10};
% handles.EPanel.Value = alphabetF{3,1};
% handles.FPanel.Value = alphabetF{3,16};
% handles.GPanel.Value = alphabetF{3,17};
% handles.HPanel.Value = alphabetF{3,8};
% handles.IPanel.Value = alphabetF{3,5};
% handles.JPanel.Value = alphabetF{3,23};
% handles.KPanel.Value = alphabetF{3,22};
% handles.LPanel.Value = alphabetF{3,11};
% handles.MPanel.Value = alphabetF{3,14};
% handles.NPanel.Value = alphabetF{3,6};
% handles.OPanel.Value = alphabetF{3,4};
% handles.PPanel.Value = alphabetF{3,20};
% handles.QPanel.Value = alphabetF{3,25};
% handles.RPanel.Value = alphabetF{3,9};
% handles.SPanel.Value = alphabetF{3,7};
% handles.TPanel.Value = alphabetF{3,2};
% handles.UPanel.Value = alphabetF{3,13};
% handles.VPanel.Value = alphabetF{3,21};
% handles.WPanel.Value = alphabetF{3,15};
% handles.XPanel.Value = alphabetF{3,24};
% handles.YPanel.Value = alphabetF{3,18};
% handles.ZPanel.Value = alphabetF{3,16};



