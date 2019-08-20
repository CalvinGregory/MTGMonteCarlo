function [manaSources] = playGame(deck, turns, openingHandSize, playFirst)
	manaSources = 0;
	handSize = openingHandSize;
	keep = false;
	while ~keep
		deck.mulligan(handSize);
		countLands = 0;
		for i = 1:length(deck.hand)
			if deck.hand(i).type == CardType.Land
				countLands = countLands + 1;
			end
		end
		if countLands > 0 && countLands < 5 || handSize <= 4
			keep = true;
		else
			handSize = handSize - 1;
			deck.mulligan(handSize);
		end
	end
	
	moxOpal = false;
	for turn = 1:turns
		playedLand = false;
		mishrasBauble = 0;
		if turn > 1 || ~playFirst
			deck.draw();
		end
		
		for i = 1:length(deck.hand)
			if deck.hand(i).type == CardType.Land
				land = deck.hand(i);
				if strcmp(deck.hand(i).note, 'fetch')
					land = deck.fetchLand();
				end
				deck.hand(i) = [];
				if ~isempty(land)
					manaSources = manaSources + 1;
				end
				playedLand = true;
				break
			end
		end
		% Cast 0 cmc spells
		firstLoop = true;
		castSpell = false;
		while (firstLoop || castSpell)
			firstLoop = false;
			castSpell = false;
			for i = 1:length(deck.hand)
				if deck.hand(i).type ~= CardType.Land && deck.hand(i).getCMC == 0
					castSpell = true;
					if strcmp(deck.hand(i).note, 'cantrip') % if bauble
						mishrasBauble = mishrasBauble + 1;
					 % if opal
					elseif ~moxOpal
						moxOpal = true;
						manaSources = manaSources + 1;
					end
					deck.hand(i) = [];
					break
				end
			end
		end
		mana = manaSources;
		castSpell = true;
		while(mana > 0 && castSpell)
			castSpell = false;
			% cast mind stone
			if mana >= 2
				for i = 1:length(deck.hand)
					if deck.hand(i).type == CardType.Artifact && strcmp(deck.hand(i).note, 'mana source') && deck.hand(i).getCMC > 0
						mana = mana - deck.hand(i).getCMC();
						deck.hand(i) = [];
						manaSources = manaSources + 1;
						mana = mana + 1;
						castSpell = true;
						break
					end
				end
			end
			cantripIndeces = [];
			maxCMC = 0;
			for i = 1:length(deck.hand)
				if strcmp(deck.hand(i).note, 'cantrip')
					cantripIndeces = [cantripIndeces, i];
					if deck.hand(i).getCMC() > maxCMC && deck.hand(i).getCMC() <= mana
						maxCMC = deck.hand(i).getCMC();
					end
				end
			end
			if ~isempty(cantripIndeces)
				% cast highest cost cantrip
				for j = 1:length(cantripIndeces)
					if deck.hand(cantripIndeces(j)).getCMC() == maxCMC
						mana = mana - deck.hand(cantripIndeces(j)).getCMC();
						deck.hand(cantripIndeces(j)) = [];
						castSpell = true;
						deck.draw();
						break
					end
				end
				if ~playedLand
					if castSpell
						if deck.hand(length(deck.hand)).type == CardType.Land
							land = deck.hand(length(deck.hand));
							if strcmp(deck.hand(length(deck.hand)).note, 'fetch')
								land = deck.fetchLand();
							end
							deck.hand(length(deck.hand)) = [];
							if ~isempty(land)
								manaSources = manaSources + 1;
								mana = mana + 1;
							end
							playedLand = true;
						end
					end
				end
			end
		end
		
		% Resolve delayed draw triggers
		if mishrasBauble
			for i = 1:mishrasBauble
				deck.draw();
			end
		end
	end
end