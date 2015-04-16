function vout=bubbleSortFunc(v) %creates function
%A respectable sorting method is the bubble sort. 
%Examine in turn each ele- ment of the vector and it?s neighbor to the right. 
%If they?re in the wrong order, swap them. 
%Continue going repeatedly through the vector in this way until the whole 
%vector has been traversed once with no swaps.

%Author: Patricia "Happy" Hale

x = 0;
%x allows while loop to continue

while x ~= length(v) 

    y = 5; %ends loop
    
    for icol = 1:length(v)-1 %goes through every element of the vector
    
        if v{1,icol} < v{1,icol + 1} %if left is less than right switches them
            
            larger = v{1, icol + 1};
            smaller = v{1, icol};
            
            v{1,icol+1} = smaller;
            v{1,icol} = larger;
        
            y = y-1;

        
        end
        
        if   y == 5 && icol == length(v)-1
            % ends the while loop when vector is in order and checked the
            % entire vector
               
          x = length(v); %ends the loop     
        end  
       
    end
    
end
vout = v; %creates organized vector