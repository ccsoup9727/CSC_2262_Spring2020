% Casey Campbell
% CSC 2262
% cs226211
% lab7 - accompanying function

function A = selectionSort(A)
n = length(A);

for j = 1:(n-1)
    imin = j; 
    for i = (j+1):n
        if(A(i) < A(imin))
            imin = i;
            
        end
    end
    
    if (imin ~= j)
        temp = A(imin);
        A(imin) = A(j);
        A(j)= temp;
        
    end
end
end