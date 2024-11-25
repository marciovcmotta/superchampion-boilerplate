-- England (Premier League)
INSERT INTO clubs (name, country, stadium) VALUES
('Arsenal', 'England', 'Emirates Stadium'),
('Aston Villa', 'England', 'Villa Park'),
('Bournemouth', 'England', 'Vitality Stadium'),
('Brentford', 'England', 'Gtech Community Stadium'),
('Brighton & Hove Albion', 'England', 'American Express Community Stadium'),
('Burnley', 'England', 'Turf Moor'),
('Chelsea', 'England', 'Stamford Bridge'),
('Crystal Palace', 'England', 'Selhurst Park'),
('Everton', 'England', 'Goodison Park'),
('Fulham', 'England', 'Craven Cottage'),
('Liverpool', 'England', 'Anfield'),
('Luton Town', 'England', 'Kenilworth Road'),
('Manchester City', 'England', 'Etihad Stadium'),
('Manchester United', 'England', 'Old Trafford'),
('Newcastle United', 'England', 'St. James'' Park'),
('Nottingham Forest', 'England', 'City Ground'),
('Sheffield United', 'England', 'Bramall Lane'),
('Tottenham Hotspur', 'England', 'Tottenham Hotspur Stadium'),
('West Ham United', 'England', 'London Stadium'),
('Wolverhampton Wanderers', 'England', 'Molineux Stadium');

-- Spain (La Liga)
INSERT INTO clubs (name, country, stadium) VALUES
('Athletic Bilbao', 'Spain', 'San Mamés'),
('Atlético Madrid', 'Spain', 'Cívitas Metropolitano'),
('Barcelona', 'Spain', 'Spotify Camp Nou'),
('Cádiz', 'Spain', 'Nuevo Mirandilla'),
('Celta Vigo', 'Spain', 'Abanca-Balaídos'),
('Getafe', 'Spain', 'Coliseum Alfonso Pérez'),
('Girona', 'Spain', 'Estadi Montilivi'),
('Granada', 'Spain', 'Nuevo Los Cármenes'),
('Las Palmas', 'Spain', 'Estadio Gran Canaria'),
('Mallorca', 'Spain', 'Visit Mallorca Estadi'),
('Osasuna', 'Spain', 'Estadio El Sadar'),
('Rayo Vallecano', 'Spain', 'Estadio de Vallecas'),
('Real Betis', 'Spain', 'Estadio Benito Villamarín'),
('Real Madrid', 'Spain', 'Santiago Bernabéu Stadium'),
('Real Sociedad', 'Spain', 'Reale Arena'),
('Sevilla', 'Spain', 'Estadio Ramón Sánchez Pizjuán'),
('Valencia', 'Spain', 'Estadio de Mestalla'),
('Villarreal', 'Spain', 'Estadio de la Cerámica');

-- Italy (Serie A)
INSERT INTO clubs (name, country, stadium) VALUES
('Atalanta', 'Italy', 'Gewiss Stadium'),
('Bologna', 'Italy', 'Stadio Renato Dall''Ara'),
('Cagliari', 'Italy', 'Unipol Domus'),
('Empoli', 'Italy', 'Stadio Carlo Castellani'),
('Fiorentina', 'Italy', 'Stadio Artemio Franchi'),
('Frosinone', 'Italy', 'Stadio Benito Stirpe'),
('Genoa', 'Italy', 'Stadio Luigi Ferraris'),
('Inter Milan', 'Italy', 'San Siro'),
('Juventus', 'Italy', 'Allianz Stadium'),
('Lazio', 'Italy', 'Stadio Olimpico'),
('Lecce', 'Italy', 'Stadio Via del Mare'),
('Milan', 'Italy', 'San Siro'),
('Monza', 'Italy', 'U-Power Stadium'),
('Napoli', 'Italy', 'Stadio Diego Armando Maradona'),
('Roma', 'Italy', 'Stadio Olimpico'),
('Salernitana', 'Italy', 'Stadio Arechi'),
('Sassuolo', 'Italy', 'Mapei Stadium - Città del Tricolore'),
('Torino', 'Italy', 'Stadio Olimpico Grande Torino'),
('Udinese', 'Italy', 'Dacia Arena'),
('Verona', 'Italy', 'Stadio Marcantonio Bentegodi');

-- Championships
INSERT INTO championships (name) VALUES
('Premier League'),        -- England
('FA Cup'),              -- England
('EFL Cup'),             -- England
('Community Shield'),    -- England
('La Liga'),              -- Spain
('Copa del Rey'),         -- Spain
('Supercopa de España'), -- Spain
('Serie A'),              -- Italy
('Coppa Italia'),         -- Italy
('Supercoppa Italiana'), -- Italy
('UEFA Champions League'),-- Europe
('UEFA Europa League'),   -- Europe
('UEFA Europa Conference League'); -- Europe

-- Arsenal Players
INSERT INTO players (name, age, nationality) VALUES
('Bukayo Saka', 22, 'England'),
('Martin Ødegaard', 25, 'Norway'),
('Gabriel Jesus', 27, 'Brazil'),
('William Saliba', 23, 'France');

-- Aston Villa Players
INSERT INTO players (name, age, nationality) VALUES
('Ollie Watkins', 28, 'England'),
('Emiliano Martínez', 32, 'Argentina'),
('Leon Bailey', 26, 'Jamaica'),
('Douglas Luiz', 26, 'Brazil');

-- Bournemouth Players
INSERT INTO players (name, age, nationality) VALUES
('Dominic Solanke', 27, 'England'),
('Philip Billing', 28, 'Denmark'),
('Marcus Tavernier', 25, 'England'),
('Lloyd Kelly', 26, 'England');

-- Brentford Players
INSERT INTO players (name, age, nationality) VALUES
('Ivan Toney', 28, 'England'),
('Bryan Mbeumo', 25, 'Cameroon'),
('Christian Nørgaard', 30, 'Denmark'),
('Rico Henry', 26, 'England');

-- Brighton & Hove Albion Players
INSERT INTO players (name, age, nationality) VALUES
('Kaoru Mitoma', 27, 'Japan'),
('Evan Ferguson', 19, 'Ireland'),
('Lewis Dunk', 32, 'England'),
('Pascal Groß', 33, 'Germany');

-- Burnley Players
INSERT INTO players (name, age, nationality) VALUES
('Josh Brownhill', 28, 'England'),
('Lyle Foster', 24, 'South Africa'),
('Zeki Amdouni', 23, 'Switzerland'),
('James Trafford', 22, 'England');

-- Chelsea Players
INSERT INTO players (name, age, nationality) VALUES
('Enzo Fernández', 23, 'Argentina'),
('Raheem Sterling', 29, 'England'),
('Reece James', 24, 'England'),
('Christopher Nkunku', 26, 'France');

-- Crystal Palace Players
INSERT INTO players (name, age, nationality) VALUES
('Wilfried Zaha', 31, 'Ivory Coast'),
('Eberechi Eze', 26, 'England'),
('Marc Guéhi', 24, 'England'),
('Cheick Doucouré', 24, 'Mali');

-- Everton Players
INSERT INTO players (name, age, nationality) VALUES
('Dominic Calvert-Lewin', 27, 'England'),
('Amadou Onana', 23, 'Belgium'),
('James Tarkowski', 31, 'England'),
('Dwight McNeil', 25, 'England');

-- Fulham Players
INSERT INTO players (name, age, nationality) VALUES
('Aleksandar Mitrović', 30, 'Serbia'),
('João Palhinha', 29, 'Portugal'),
('Andreas Pereira', 28, 'Brazil'),
('Tim Ream', 36, 'USA');

-- Liverpool Players
INSERT INTO players (name, age, nationality) VALUES
('Mohamed Salah', 32, 'Egypt'),
('Trent Alexander-Arnold', 25, 'England'),
('Darwin Núñez', 25, 'Uruguay'),
('Virgil van Dijk', 33, 'Netherlands');

-- Luton Town Players
INSERT INTO players (name, age, nationality) VALUES
('Tom Lockyer', 29, 'Wales'),
('Carlton Morris', 28, 'England'),
('Elijah Adebayo', 26, 'England'),
('Marvelous Nakamba', 30, 'Zimbabwe');

-- Manchester City Players
INSERT INTO players (name, age, nationality) VALUES
('Erling Haaland', 24, 'Norway'),
('Kevin De Bruyne', 33, 'Belgium'),
('Phil Foden', 24, 'England'),
('Ruben Dias', 27, 'Portugal');

-- Manchester United Players
INSERT INTO players (name, age, nationality) VALUES
('Marcus Rashford', 27, 'England'),
('Bruno Fernandes', 29, 'Portugal'),
('Casemiro', 32, 'Brazil'),
('Raphaël Varane', 31, 'France');

-- Newcastle United Players
INSERT INTO players (name, age, nationality) VALUES
('Alexander Isak', 25, 'Sweden'),
('Bruno Guimarães', 26, 'Brazil'),
('Kieran Trippier', 34, 'England'),
('Nick Pope', 32, 'England');

-- Nottingham Forest Players
INSERT INTO players (name, age, nationality) VALUES
('Morgan Gibbs-White', 24, 'England'),
('Brennan Johnson', 23, 'Wales'),
('Taiwo Awoniyi', 27, 'Nigeria'),
('Steve Cook', 33, 'England');

-- Sheffield United Players
INSERT INTO players (name, age, nationality) VALUES
('Oliver McBurnie', 28, 'Scotland'),
('John Fleck', 33, 'Scotland'),
('Sander Berge', 26, 'Norway'),
('Anel Ahmedhodžić', 25, 'Bosnia');

-- Tottenham Hotspur Players
INSERT INTO players (name, age, nationality) VALUES
('Harry Kane', 31, 'England'),
('Son Heung-min', 32, 'South Korea'),
('James Maddison', 27, 'England'),
('Cristian Romero', 26, 'Argentina');

-- West Ham United Players
INSERT INTO players (name, age, nationality) VALUES
('Jarrod Bowen', 27, 'England'),
('Lucas Paquetá', 26, 'Brazil'),
('Declan Rice', 25, 'England'),
('Kurt Zouma', 30, 'France');

-- Wolverhampton Wanderers Players
INSERT INTO players (name, age, nationality) VALUES
('Pedro Neto', 24, 'Portugal'),
('Rúben Neves', 27, 'Portugal'),
('Raúl Jiménez', 33, 'Mexico'),
('Matheus Nunes', 26, 'Portugal');

-- Athletic Bilbao Players
INSERT INTO players (name, age, nationality) VALUES
('Iñaki Williams', 30, 'Spain'),
('Nico Williams', 22, 'Spain'),
('Iker Muniain', 31, 'Spain'),
('Unai Simón', 27, 'Spain');

-- Atlético Madrid Players
INSERT INTO players (name, age, nationality) VALUES
('Antoine Griezmann', 33, 'France'),
('João Félix', 25, 'Portugal'),
('Jan Oblak', 31, 'Slovenia'),
('Marcos Llorente', 29, 'Spain');

-- Barcelona Players
INSERT INTO players (name, age, nationality) VALUES
('Robert Lewandowski', 36, 'Poland'),
('Pedri', 21, 'Spain'),
('Gavi', 20, 'Spain'),
('Marc-André ter Stegen', 32, 'Germany');

-- Cádiz Players
INSERT INTO players (name, age, nationality) VALUES
('Álvaro Negredo', 38, 'Spain'),
('Rubén Alcaraz', 33, 'Spain'),
('Brian Ocampo', 25, 'Uruguay'),
('Fali', 30, 'Spain');

-- Celta Vigo Players
INSERT INTO players (name, age, nationality) VALUES
('Iago Aspas', 36, 'Spain'),
('Gabri Veiga', 22, 'Spain'),
('Renato Tapia', 29, 'Peru'),
('Joseph Aidoo', 28, 'Ghana');

-- Getafe Players
INSERT INTO players (name, age, nationality) VALUES
('Enes Ünal', 27, 'Turkey'),
('Mason Greenwood', 23, 'England'),
('Luis Milla', 29, 'Spain'),
('Djené Dakonam', 32, 'Togo');

-- Girona Players
INSERT INTO players (name, age, nationality) VALUES
('Cristhian Stuani', 37, 'Uruguay'),
('Viktor Tsygankov', 26, 'Ukraine'),
('Aleix García', 26, 'Spain'),
('Juanpe', 33, 'Spain');

-- Granada Players
INSERT INTO players (name, age, nationality) VALUES
('José Callejón', 37, 'Spain'),
('Myrto Uzuni', 29, 'Albania'),
('Raúl Torrente', 23, 'Spain'),
('Bryan Zaragoza', 22, 'Spain');

-- Las Palmas Players
INSERT INTO players (name, age, nationality) VALUES
('Jonathan Viera', 34, 'Spain'),
('Marc Cardona', 28, 'Spain'),
('Álvaro Lemos', 30, 'Spain'),
('Kirian Rodríguez', 27, 'Spain');

-- Mallorca Players
INSERT INTO players (name, age, nationality) VALUES
('Vedat Muriqi', 30, 'Kosovo'),
('Kang-in Lee', 23, 'South Korea'),
('Antonio Raíllo', 32, 'Spain'),
('Pablo Maffeo', 27, 'Spain');

-- Osasuna Players
INSERT INTO players (name, age, nationality) VALUES
('Chimy Ávila', 30, 'Argentina'),
('David García', 30, 'Spain'),
('Moi Gómez', 29, 'Spain'),
('Sergio Herrera', 31, 'Spain');

-- Rayo Vallecano Players
INSERT INTO players (name, age, nationality) VALUES
('Álvaro García', 31, 'Spain'),
('Radamel Falcao', 38, 'Colombia'),
('Isi Palazón', 29, 'Spain'),
('Stole Dimitrievski', 30, 'North Macedonia');

-- Real Betis Players
INSERT INTO players (name, age, nationality) VALUES
('Nabil Fekir', 30, 'France'),
('Borja Iglesias', 31, 'Spain'),
('William Carvalho', 32, 'Portugal'),
('Luiz Felipe', 27, 'Italy');

-- Real Madrid Players
INSERT INTO players (name, age, nationality) VALUES
('Vinícius Júnior', 23, 'Brazil'),
('Jude Bellingham', 21, 'England'),
('Luka Modrić', 38, 'Croatia'),
('Thibaut Courtois', 32, 'Belgium');

-- Real Sociedad Players
INSERT INTO players (name, age, nationality) VALUES
('Mikel Oyarzabal', 27, 'Spain'),
('Alexander Sørloth', 28, 'Norway'),
('David Silva', 38, 'Spain'),
('Takefusa Kubo', 23, 'Japan');

-- Sevilla Players
INSERT INTO players (name, age, nationality) VALUES
('Youssef En-Nesyri', 27, 'Morocco'),
('Ivan Rakitić', 36, 'Croatia'),
('Jesús Navas', 38, 'Spain'),
('Marcos Acuña', 32, 'Argentina');

-- Valencia Players
INSERT INTO players (name, age, nationality) VALUES
('José Gayà', 29, 'Spain'),
('Hugo Guillamón', 24, 'Spain'),
('Justin Kluivert', 25, 'Netherlands'),
('André Almeida', 24, 'Portugal');

-- Villarreal Players
INSERT INTO players (name, age, nationality) VALUES
('Gerard Moreno', 32, 'Spain'),
('Yeremy Pino', 21, 'Spain'),
('Pau Torres', 27, 'Spain'),
('Giovani Lo Celso', 28, 'Argentina');

-- Atalanta Players
INSERT INTO players (name, age, nationality) VALUES
('Duván Zapata', 33, 'Colombia'),
('Teun Koopmeiners', 26, 'Netherlands'),
('Giorgio Scalvini', 20, 'Italy'),
('Luis Muriel', 33, 'Colombia');

-- Bologna Players
INSERT INTO players (name, age, nationality) VALUES
('Marko Arnautović', 35, 'Austria'),
('Riccardo Orsolini', 27, 'Italy'),
('Stefan Posch', 27, 'Austria'),
('Jerdy Schouten', 27, 'Netherlands');

-- Cagliari Players
INSERT INTO players (name, age, nationality) VALUES
('Leonardo Pavoletti', 35, 'Italy'),
('Nahitan Nández', 29, 'Uruguay'),
('Zito Luvumbo', 22, 'Angola'),
('Boris Radunović', 28, 'Serbia');

-- Empoli Players
INSERT INTO players (name, age, nationality) VALUES
('Tommaso Baldanzi', 20, 'Italy'),
('Sam Lammers', 27, 'Netherlands'),
('Sebastiano Luperto', 27, 'Italy'),
('Guglielmo Vicario', 27, 'Italy');

-- Fiorentina Players
INSERT INTO players (name, age, nationality) VALUES
('Nicolás González', 26, 'Argentina'),
('Arthur Cabral', 25, 'Brazil'),
('Sofyan Amrabat', 28, 'Morocco'),
('Cristiano Biraghi', 31, 'Italy');

-- Frosinone Players
INSERT INTO players (name, age, nationality) VALUES
('Luca Mazzitelli', 28, 'Italy'),
('Gianluca Frabotta', 25, 'Italy'),
('Jaime Báez', 28, 'Uruguay'),
('Francesco Gelli', 27, 'Italy');

-- Genoa Players
INSERT INTO players (name, age, nationality) VALUES
('Mattia Bani', 30, 'Italy'),
('Albert Gudmundsson', 26, 'Iceland'),
('Stefano Sturaro', 31, 'Italy'),
('Kevin Strootman', 34, 'Netherlands');

-- Inter Milan Players
INSERT INTO players (name, age, nationality) VALUES
('Lautaro Martínez', 26, 'Argentina'),
('Nicolò Barella', 27, 'Italy'),
('André Onana', 28, 'Cameroon'),
('Hakan Çalhanoğlu', 30, 'Turkey');

-- Juventus Players
INSERT INTO players (name, age, nationality) VALUES
('Dušan Vlahović', 24, 'Serbia'),
('Federico Chiesa', 27, 'Italy'),
('Manuel Locatelli', 26, 'Italy'),
('Wojciech Szczęsny', 34, 'Poland');

-- Lazio Players
INSERT INTO players (name, age, nationality) VALUES
('Ciro Immobile', 34, 'Italy'),
('Sergej Milinković-Savić', 29, 'Serbia'),
('Luis Alberto', 31, 'Spain'),
('Ivan Provedel', 30, 'Italy');

-- Lecce Players
INSERT INTO players (name, age, nationality) VALUES
('Gabriel Strefezza', 26, 'Brazil'),
('Assan Ceesay', 30, 'Gambia'),
('Morten Hjulmand', 24, 'Denmark'),
('Federico Baschirotto', 27, 'Italy');

-- Milan Players
INSERT INTO players (name, age, nationality) VALUES
('Rafael Leão', 25, 'Portugal'),
('Theo Hernández', 26, 'France'),
('Mike Maignan', 29, 'France'),
('Olivier Giroud', 38, 'France');

-- Monza Players
INSERT INTO players (name, age, nationality) VALUES
('Patrick Ciurria', 28, 'Italy'),
('Matteo Pessina', 26, 'Italy'),
('Gianluca Caprari', 30, 'Italy'),
('Carlos Augusto', 25, 'Brazil');

-- Napoli Players
INSERT INTO players (name, age, nationality) VALUES
('Victor Osimhen', 25, 'Nigeria'),
('Khvicha Kvaratskhelia', 23, 'Georgia'),
('Giovanni Di Lorenzo', 31, 'Italy'),
('Stanislav Lobotka', 29, 'Slovakia');

-- Roma Players
INSERT INTO players (name, age, nationality) VALUES
('Paulo Dybala', 30, 'Argentina'),
('Lorenzo Pellegrini', 28, 'Italy'),
('Tammy Abraham', 27, 'England'),
('Chris Smalling', 35, 'England');

-- Salernitana Players
INSERT INTO players (name, age, nationality) VALUES
('Boulaye Dia', 28, 'Senegal'),
('Antonio Candreva', 37, 'Italy'),
('Grigoris Kastanos', 26, 'Cyprus'),
('Norbert Gyömbér', 31, 'Slovakia');

-- Sassuolo Players
INSERT INTO players (name, age, nationality) VALUES
('Domenico Berardi', 30, 'Italy'),
('Davide Frattesi', 25, 'Italy'),
('Maxime López', 26, 'France'),
('Andrea Consigli', 37, 'Italy');

-- Torino Players
INSERT INTO players (name, age, nationality) VALUES
('Antonio Sanabria', 28, 'Paraguay'),
('Perr Schuurs', 24, 'Netherlands'),
('Nemanja Radonjić', 28, 'Serbia'),
('Vanja Milinković-Savić', 27, 'Serbia');

-- Udinese Players
INSERT INTO players (name, age, nationality) VALUES
('Gerard Deulofeu', 30, 'Spain'),
('Beto', 26, 'Portugal'),
('Walace', 29, 'Brazil'),
('Jaka Bijol', 25, 'Slovenia');

-- Verona Players
INSERT INTO players (name, age, nationality) VALUES
('Darko Lazović', 33, 'Serbia'),
('Kevin Lasagna', 31, 'Italy'),
('Adrien Tameze', 29, 'Cameroon'),
('Pawel Dawidowicz', 29, 'Poland');