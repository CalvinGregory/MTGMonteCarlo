decks = [];

%% Deck 1
% 17 land, 16 cantrips
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:9
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:8
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 2 cmc cantrips
for i = 1:2
	cards = [cards, Card('Ichor Wellspring', '2', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 2
% 18 land, 15 cantrips
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:10
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:8
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 2 cmc cantrips
for i = 1:1
	cards = [cards, Card('Ichor Wellspring', '2', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 3
% 19 land, 14 cantrips
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:11
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:7
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 2 cmc cantrips
for i = 1:1
	cards = [cards, Card('Ichor Wellspring', '2', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 4
% 20 land, 13 cantrips
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:12
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:6
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 2 cmc cantrips
for i = 1:1
	cards = [cards, Card('Ichor Wellspring', '2', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 5
% 21 land, 12 cantrips
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:13
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:5
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 2 cmc cantrips
for i = 1:1
	cards = [cards, Card('Ichor Wellspring', '2', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 6
% 22 land, 11 cantrips
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:14
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:4
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 2 cmc cantrips
for i = 1:1
	cards = [cards, Card('Ichor Wellspring', '2', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 7
% 17 land, 14 cantrips, 2 mind stone
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:9
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:7
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 2 cmc cantrips
for i = 1:1
	cards = [cards, Card('Ichor Wellspring', '2', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% mind stones
for i = 1:2
	cards = [cards, Card('Mind Stone', '2', CardType.Artifact, 'mana source')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 8
% 18 land, 13 cantrips, 2 mind stone
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:10
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:6
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 2 cmc cantrips
for i = 1:1
	cards = [cards, Card('Ichor Wellspring', '2', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% mind stones
for i = 1:2
	cards = [cards, Card('Mind Stone', '2', CardType.Artifact, 'mana source')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 9
% 19 land, 12 cantrips, 2 mind stone
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:11
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:5
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 2 cmc cantrips
for i = 1:1
	cards = [cards, Card('Ichor Wellspring', '2', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% mind stones
for i = 1:2
	cards = [cards, Card('Mind Stone', '2', CardType.Artifact, 'mana source')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 10
% 20 land, 11 cantrips, 2 mind stone
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:12
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:4
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 2 cmc cantrips
for i = 1:1
	cards = [cards, Card('Ichor Wellspring', '2', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% mind stones
for i = 1:2
	cards = [cards, Card('Mind Stone', '2', CardType.Artifact, 'mana source')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 11
% 21 land, 10 cantrips, 2 mind stone
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:13
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:4
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% mind stones
for i = 1:2
	cards = [cards, Card('Mind Stone', '2', CardType.Artifact, 'mana source')];
end
% Other
for i = 1:23
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];

%% Deck 12
% 22 land, 10 cantrips, 2 mind stone
cards = [];
% fetches
for i = 1:8
	cards = [cards, Card('Fetch Land', '0', CardType.Land, 'fetch')];
end
% non-fetches
for i = 1:14
	cards = [cards, Card('Non-Fetch', '0', CardType.Land, '')];
end
% mox opals
for i = 1:4
	cards = [cards, Card('Mox Opal', '0', CardType.Artifact, 'mana source')];
end
% 0 cmc cantrips
for i = 1:4
	cards = [cards, Card('Mishras Bauble', '0', CardType.Artifact, 'cantrip')];
end
% 1 cmc cantrips
for i = 1:4
	cards = [cards, Card('Arcums Astrolabe', '1', CardType.Artifact, 'cantrip')];
end
% 3 cmc cantrips
for i = 1:2
	cards = [cards, Card('Teferi, Time Raveler', '1WU', CardType.Planeswalker, 'cantrip')];
end
% mind stones
for i = 1:2
	cards = [cards, Card('Mind Stone', '2', CardType.Artifact, 'mana source')];
end
% Other
for i = 1:22
	cards = [cards, Card('Urza, Lord High Artificer', '2UU', CardType.Creature, '')];
end

decks = [decks, Deck(cards)];