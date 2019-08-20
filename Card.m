classdef Card
	properties
		name = '';
		manaCost = '';
		type;
		note = '';
	end
	
	methods
		function obj=Card(name, manaCost, type, note)
			obj.name = name;
			obj.manaCost = strtrim(manaCost);
			obj.type = type;
			obj.note = note;
		end
		
		function cmc = getCMC(obj)
			cmc = 0;
			colorless = sscanf(obj.manaCost, '%d');
			if colorless == 0
				cmc = cmc - 1;
			end
			if isempty(colorless)
				colorless = 0;
			end
			colorless_digits = floor(log10(abs(colorless)+1)) + 1;
			cmc = cmc + strlength(obj.manaCost) + colorless;
			if colorless
				cmc = cmc - colorless_digits;
			end
		end
		
		function colors = getColors(obj)
			colors = ' ';
			if ~isempty(strfind(obj.manaCost, 'w')) || ~isempty(strfind(obj.manaCost, 'W'))
				colors = strcat(colors, 'W');
			end
			if ~isempty(strfind(obj.manaCost, 'u')) || ~isempty(strfind(obj.manaCost, 'U'))
				colors = strcat(colors, 'U');
			end
			if ~isempty(strfind(obj.manaCost, 'b')) || ~isempty(strfind(obj.manaCost, 'B'))
				colors = strcat(colors, 'B');
			end
			if ~isempty(strfind(obj.manaCost, 'r')) || ~isempty(strfind(obj.manaCost, 'R'))
				colors = strcat(colors, 'R');
			end
			if ~isempty(strfind(obj.manaCost, 'g')) || ~isempty(strfind(obj.manaCost, 'G'))
				colors = strcat(colors, 'G');
			end
			if strlength(colors) > 1
				colors = strtrim(colors);
			end
		end
	end
end