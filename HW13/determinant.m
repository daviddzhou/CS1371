function [ determin ] = determinant( matrix )
[r, c]=size(matrix);     % number of rows and columns of A
determin=0;

% Calculate determinant
if r==2
%     if the matrix a 2x2 matrix, then directly calculate the determinant
    determin=matrix(1,1)*matrix(2,2)-matrix(1,2)*matrix(2,1);
else
%     if the matrix is not 2x2 reduce its order of 1, generating a matrix with r-1 rows and c-1 columns. 
    reduceMatrix=matrix;
    for i=1:c
        coFactor=reduceMatrix(1,i);    % save the element of the 1st row and ith column of the temporary matrix; this element will be used to calculate the determinant later on
        if coFactor~=0
            reduceMatrix(1,:)=[];     % remove the first row to create the reduced matrix
            reduceMatrix(:,i)=[];     % remove the ith column to create the reduced matrix
            redMat=reduceMatrix;
            redMatDet=determinant(redMat); % Calculate the determinant of the reduced matrix recalling the function
            determin=determin+((-1)^(1+i))*coFactor*redMatDet;
            reduceMatrix=matrix;           % reset elements of temporary matrix to input elemens
        end
    end
end 
end

