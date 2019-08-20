classdef Deck < matlab.mixin.Copyable
	properties
		library = {};
		hand = {};
	end
	
	methods
		function obj=Deck(cards)
			obj.library = cards;
			if length(obj.library) < 60
				disp('Error: Deck does not contain 60+ cards.')
			end
		end
		
		function shuffle(obj)
			obj.library = obj.library(randperm(length(obj.library)));
		end
		
		function card = draw(obj)
			card = obj.library(1);
			obj.hand = [obj.hand, card];
			obj.library(1) = [];
		end
		
		function card = fetchLand(obj)
			card = [];
			for i = 1:length(obj.library)
				if obj.library(i).type == CardType.Land && ~strcmp(obj.library(i).note, 'fetch')
					card = obj.library(i);
					obj.library(i) = [];
					break
				end
			end
			obj.shuffle();
		end
		
		function mill(obj)
			obj.library(1) = [];
		end
		
		function mulligan(obj, cardsToKeep)
			if ~isempty(obj.hand)
				obj.library = [obj.library, obj.hand];
				obj.hand = {};
			end
			if cardsToKeep > 0
				obj.shuffle();
				for i = 1:7
					obj.draw();
				end
				if cardsToKeep < 7
					for i = 1:(7-cardsToKeep)
						numLands = 0;
						for j = 1:length(obj.hand)
							if (obj.hand(j).type == CardType.Land)
								numLands = numLands + 1;
							end
						end
						if cardsToKeep > 5 && numLands > 3 || cardsToKeep <= 5 && numLands > 2 || numLands == cardsToKeep
							for j = 1:length(obj.hand)
								if obj.hand(j).type == CardType.Land
									obj.library = [obj.library, obj.hand(j)];
									obj.hand(j) = [];
									break
								end
							end
						else
							cardRemoved = false;
							for j = 1:length(obj.hand)
								if obj.hand(j).type ~= CardType.Land
									if ~strcmp(obj.hand(j).note, 'cantrip')
										obj.library = [obj.library, obj.hand(j)];
										obj.hand(j) = [];
										cardRemoved = true;
										break
									end
								end
							end
							if ~cardRemoved
								for j = 1:length(obj.hand)
									if obj.hand(j).type ~= CardType.Land
										obj.library = [obj.library, obj.hand(j)];
										obj.hand(j) = [];
										cardRemoved = true;
										break
									end
								end
								if ~cardRemoved
									obj.library = [obj.library, obj.hand(1)];
									obj.hand(1) = [];
								end
							end
						end
					end
				end
			end
		end
	end
end

