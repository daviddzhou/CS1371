function [ out1 , out2 ] = pizzaParty ( people , pizza ) 

pizzaslice = (pizza * 8);

out1 = floor(pizzaslice / people);

out2 = mod(pizzaslice, people);

    
end