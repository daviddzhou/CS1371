function [ msg1 ] = rebelCipher(strinput,encrypt)

encrypt = mod(encrypt,26);

newstr = upper(strinput);

convstr = newstr - 65;

finalstr = convstr + encrypt;

convfstr = mod(finalstr,26);

convfstr = convfstr + 65;

convfstr = char(convfstr);

msg1 = [num2str(encrypt) convfstr];

end