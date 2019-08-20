clear
close all
clc

buildDecks;

%% Start Sim
numTurns = 4;
numGames = 5000;
deck_data = zeros(length(decks), numGames);

for i = 1:length(decks) 
	for j = 1:numGames
		manaSources = playGame(decks(i).copy(), numTurns, 7, true);
		deck_data(i, j) = manaSources;
	end
	fprintf('Simulated Deck%d\n',i)
end

%% Plots
for i = 1:length(decks)
	count = 0;
	for j = 1:numGames
		if deck_data(i, j) >= numTurns
			count = count + 1;
		end
	end
	
	numLands = 0;
	numCantrips = 0;
	numNonLandManaSources = 0;
	for j = 1:length(decks(i).library)
		if decks(i).library(j).type == CardType.Land
			numLands = numLands + 1;
		elseif strcmp(decks(i).library(j).note, 'mana source')
			numNonLandManaSources = numNonLandManaSources + 1;
		end
		if strcmp(decks(i).library(j).note, 'cantrip')
			numCantrips = numCantrips + 1;
		end
	end
	
	figure
	hold on
	title(sprintf('Deck%d - Lands:%d, ManaRocks:%d, Cantrips:%d', i, numLands, numNonLandManaSources, numCantrips));
	xlabel(sprintf('Mana sources in play by turn %d.', numTurns));
	ylabel('Games');
% 	binEdges = 0:max(deck_data(i,:)+2);
% 	histogram(deck_data(i,:), binEdges);
	histogram(deck_data(i,:));
	axis([0 6 0 inf]);
% 	set(gca, 'XTick', 0:max(deck_data(i,:))+1)
	dim = [0.2 0.5 0.3 0.3];
	annotation('textbox', dim, ...
		'String', {sprintf('Deck%d reached %d or more mana',i, numTurns), ...
				   sprintf('by turn %d %.1f%% of the time.', numTurns, count/numGames*100), ...
				   sprintf('mean=%.4f , variance=%.4f', mean(deck_data(i,:)), var(deck_data(i,:)))}, ...
		'FitBoxToText', 'on');
	hold off
end