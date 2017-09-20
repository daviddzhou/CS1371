function [ city, win ] = superheroCrisis(villain_count_init, villain_count_first, villain_count_second)
%
city_names = 'NAWLD';
villain_max_vec = [25,40,15,35,50];
%total villain count during the first two waves
villain_count_after = villain_count_init + villain_count_first;
%will display logicals for which cities survive
villain_count_survive = villain_max_vec >= villain_count_after;

%cities that survived
cities_survived = find(villain_count_survive);
%name of the cities that survive
name_cities_survived = city_names(cities_survived);
%find the number of villains that survive and divide it by 2 to show that
%the new number is 1/2 of the initial
villain_count_survive_new = round(villain_count_after(cities_survived) ./2);
%find the new villain max for remaining cities
new_villain_max_vec = villain_max_vec(cities_survived);
%new villain count for the cities that survive the second wave
villain_count_new = villain_count_survive_new + villain_count_second;
log_villain_count_survive = new_villain_max_vec >= villain_count_new;
%final positions of the cities that survive
final_cities_survived_pos = find(log_villain_count_survive);

%cities that survive
final_cities_survived = name_cities_survived(final_cities_survived_pos);
villain_count_final = (villain_count_new .* 2)./3;

%final ouputs

city = final_cities_survived;
win = villain_count_final(final_cities_survived_pos) <= (new_villain_max_vec(final_cities_survived_pos)./2);


