
function [determin]=determinant(A)

[r, c]=size(A);     % number of rows and columns of A

determin=0;

% Calculate determinant
if r==2
%     if the matrix a 2x2 matrix, then directly calculate the determinant
%     using the common formula
    determin=A(1,1)*A(2,2)-A(1,2)*A(2,1);
else
%     if the matrix is not 2x2 reduce its order of 1, generating a matrix
%     with r-1 rows and c-1 columns. Subsequently recall the function using
%     the reduced matrix
    temp_A=A;
    for i=1:c
        a1i=temp_A(1,i);    % save the element of the 1st row and ith column of the temporary matrix; this element will be used to calculate the determinant later on
        if a1i~=0
            temp_A(1,:)=[];     % remove the first row to create the reduced matrix
            temp_A(:,i)=[];     % remove the ith column to create the reduced matrix
            Cj=temp_A;
            DetCj=determin(Cj); % Calculate the determinant of the reduced matrix recalling the function
            determin=determin+((-1)^(1+i))*a1i*DetCj;
            temp_A=A;           % reset elements of temporary matrix to input elemens
        end
    end
end 
        


