%% MessageDecrypter.m
% This program will decrypt a coded message uploaded into MATLAB


clear;
clc;
%% Library of Frequency and Letter Statistics

%Frequency of the letter listed after 'freq' (percent)
freqA = 0.08167; 
freqB = 0.01492;
freqC = 0.02782;
freqD = 0.04253;
freqE = 0.1251;
freqF = 0.02228;
freqG = 0.02015;
freqH = 0.06094;
freqI = 0.06966;
freqJ = 0.00153;
freqK = 0.00772;
freqL = 0.04025;
freqM = 0.02406;
freqN = 0.06749;
freqO = 0.07507;
freqP = 0.01929;
freqQ = 0.00095;
freqR = 0.05987;
freqS = 0.06327;
freqT = 0.09056;
freqU = 0.02758;
freqV = 0.00978;
freqW = 0.02360;
freqX = 0.00150;
freqY = 0.01974;
freqZ = 0.00074;

%Common word beginning letters 'begin_' frequency (percent) 
    %Top 10

beginT = 0.1594;
beginA = 0.155;
beginI = 0.0823;
beginS = 0.0775;
beginO = 0.0712;
beginC = 0.0597;
beginM = 0.0426;
beginF = 0.0408;
beginP = 0.040;
beginW = 0.0382;

%Common word ending letters 'end_' frequency (percent)
    %Top 10

endE = 0.1917;
endS = 0.1435;
endD = 0.0923;
endT = 0.0864;
endN = 0.0786;
endY = 0.0730;
endR = 0.0693;
endO = 0.0467;
endL = 0.0456;
endF = 0.0408;

%% Set Parameters

alphabetF = zeros(1, 26); % initializes vector for potential alphabet

message = input('Please enter encrypted message:', 's');

letter = 0;

letterFreq = 0; 


%% Uploads image/Coded Message


%% Decrypts Message


%Stores the frequency of each symbol
    for u = 1:length(message)
        
        if message(u) == message(u + 1)
            
            letter = letter + 1;
            
        else 
        end
        
        letterFreq = letter/length(message);
        
        alphabetF(u) = letterFreq;
        
        letterFreq = 0;
        letter = 0;
    end

for i = 1:length(message)
     %Begins determining which symbol is which letter
    
  
    
  
    
    
    end
end