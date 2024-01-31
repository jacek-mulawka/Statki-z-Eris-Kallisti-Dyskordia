# Statki-z-Eris-Kallisti-Dyskordia

Wieloosobowa gra o statkach (strzelanka z elementami 'symulacji'), wspiera modyfikowanie i tworzenie nowych statków i map w edytorach tekstu (schematy oparte o xml).

Gra zawiera tłumaczenia na kilka wersji językowych.

Aby korzystać z dźwięków w grze system powinien mieć dostęp do bibliotek OpenAL (http://www.openal.org). Najprawdopodobniej biblioteki te próbują łączyć się z siecią na co nie mam wpływu.

Oprócz możliwości pływania statkiem gra oferuje:
* gra pojedyncza (lokalna) i sieciowa;
* granie wraz z SI (opartej na algorytmie);
* zmiana stopnia trudności SI;
* uszkodzeniu mogą ulec różne elementy statku (poszczególne bronie, napęd, ster, ster głębokości, radar, sonar, radio);
* różne rodzaje broni (artyleria, bomby głębinowe, działa, jeże głębinowe, torpedy);
* ustawianie głębokości, na której płyną torpedy;
* wystrzeloną amunicję można zniszczyć trafiając w nią;
* graficzny wskaźnik zakresu obrotu broni i kątów, w których obrębie broń nie może strzelać;
* efekty trafień, uszkodzeń, smugi pocisków, dym, rozchlapania wody;
* odrzut luf po wystrzale oraz efekt ognia z luf wraz z dymem;
* statystyki rozgrywki dostępne na bieżąco (w formie tabeli i tekstowej);
* wyświetlanie na radarze zasięgu broni, kierunku obrotu kamery, nadpływających torped (gdy sonar jest na wyposażeniu);
* statki wymieniają między sobą przez radio informacje o pozycjach innych statków (i lądów), które są poza zasięgiem radaru oraz sonaru;
* zakłócanie funkcjonowania systemów wrogich statków, które może zadawać obrażenia;
* pokój rozmów (chat) zarówno w trakcie gry jak i poza grą;
* wyświetlanie wiadomości pokoju rozmów na ekranie gry;
* ignorowanie wiadomości od wskazanych graczy, grup, SI;
* możliwość wydawania poleceń dla SI (poprzez pokój rozmów);
* wśród poleceń dla SI są np. zapytania o stan statku, zmiany trybu strzelania i pływania, prośby o zgodę na lądowanie, rezygnowanie z lądowania, wskazanie punktu, w który SI ma płynąć;
* SI zagaduje (przesyła komunikaty) zależnie od sytuacji w grze;
* SI może wspomagać gracza w pływaniu statkiem, lataniu samolotem, lądowaniu;
* SI może strzelać za gracza z jego statku;
* pełny cykl dnia i nocy;
* zmiana intensywności falowania (wzburzenia) morza;
* efekt mgły, chmur, fal;
* wiatr wpływający na rozgrywkę;
* automatyczne zmienianie pory dnia, intensywności mgły i fal;
* ślad torowy za statkami;
* słońce, księżyc, gwiazdy;
* gwiazdy o stałym położeniu wskazujące kierunki świata;
* dwa tryby oświetlenia statków i obiektów na lądzie;
* dalmierz, luneta, kotwice;
* wysyłanie sygnału SOS;
* podążanie kamery za pociskami;
* kamera 'trzymająca się' statku;
* kamera swobodna bez jakichkolwiek ograniczeń - prędkość ruchu kamery wedle uznania;
* kamera artyleryjska;
* wskazywanie punktu, w który oddano strzał z artylerii;
* kilka trybów wyświetlania punktów życia;
* łodzie podwodne z możliwością zanurzenia;
* przekraczanie zanurzenia maksymalnego dla łodzi podwodnej (może skutkować powstawaniem uszkodzeń);
* wpływ prędkości na promień skrętu;
* samoloty i lotniskowce, na których można wylądować, naprawić samolot i uzupełnić amunicję;
* możliwość gry jednocześnie lotniskowcem i samolotem;
* wśród samolotów jest między innymi bombowiec i torpedowiec;
* uproszczony i normalny tryb lądowania na lotniskowcach;
* kilka trybów wskazywania drogi do wybranego punktu;
* wskazywanie dla samolotów drogi do lotniskowca, który wyraził zgodę na lądowanie;
* nanoszenie namiarów z sonaru na ekran gry (jako ułatwienie rozgrywki);
* zdefiniowanie pozycji początkowych grup na mapie w definicjach lądu i jako oddzielne definicje pozycji początkowych;
* możliwość zapisania ustawień gry;
* możliwość zapisania konfiguracji statków SI, które mają wziąć udział w rozgrywce;
* możliwość zapisania wielu ustawień klawiszy;
* wyszukiwanie i filtrowanie w ustawieniach klawiszy;
* sprawdzanie poprawności ustawień klawiszy;
* tryb projektowy ułatwiający tworzenie statków, map oraz zmienianie przebiegu rozgrywki;
* obiekty lądu mogą być neutralne, uszkadzać, leczyć, spowalniać, odbijać, uzupełnić amunicję;
* obiektom lądu można określić wytrzymałość i niszczyć je w trakcie rozgrywki;
* tryb fotograficzny ukrywający informacje ekranowe;
* podczas tworzenia statków i map można korzystać z przygotowanych wcześniej obiektów (nazywanych tutaj prymitywami), wszystkie dostępne obiekty można umieszczać w pętlach aby łatwo tworzyć ich większe grupy;
* zmienna prędkość gry;
* wiele opcji możliwych do dopasowania wedle własnych preferencji;
* oraz inne funkcjonalności, do których poznania zapraszam.

Znane błędy.
* Tryb wieloosobowy nie jest do końca stabilny i nie jest zbyt wydajny. Aktualnie za bardzo nie wiem jak go ulepszyć.
* Czasami przestają działać tekstury.
* Na niektórych komputerach gra ulega 'zamrożeniu'. Najprawdopodobniej przyczyną jest jeden z efektów graficznych (GLS.FireFX). Jeżeli tak się dzieje należy w opcjach wyłączyć niektóre efekty graficzne.
* Na niektórych komputerach pojawia się błąd przeliczania współrzędnych ekranowych na współrzędne sceny (świata gry). Najprawdopodobniej przyczyną jest GLS.SkyDome.TGLSkyDome (dla GLS.SkyDome.TGLEarthSkyDome działa poprawnie). Jeżeli tak się dzieje należy w opcjach zmienić 'Niebo' (również dla radaru).


## English

Multiplayer ship game (shooter with 'simulation' elements), supports modifying and creating new ships and maps in text editors (xml based scheme).

The game includes translations into several language versions.

To use sounds in the game, the system should have access to OpenAL libraries (http://www.openal.org). Most likely, these libraries are trying to connect to the network, which I have no influence on.

In addition to the possibility of sailing a ship, the game offers:
* single (local) and online play;
* playing along with the AI (based on the algorithm);
* AI difficulty change;
* various elements of the ship can be damaged (individual weapons, propulsion, rudder, depth rudder, radar, sonar, radio);
* various types of weapons (artillery, depth charges, cannons, depth hedgehogs, torpedoes);
* setting the depth at which torpedoes sail;
* fired ammunition can be destroyed by hitting it;
* a graphical indicator of the range of rotation of the weapon and the angles within which the weapon cannot fire;
* effects of hits, damage, bullet tracers, smoke, water splashes;
* the recoil of the barrels after firing and the effect of barrel fire with smoke;
* game statistics available on an ongoing basis (in the form of a table and text);
* displaying on the radar the range of weapons, the direction of rotation of the camera, incoming torpedoes (when sonar is equipped);
* ships exchange with each other by radio information about the positions of other ships (and land objects) that are beyond the range of radar and sonar;
* disrupting enemy ship systems that can deal damage;
* a chat room both in-game and out-of-game;
* displaying chat room messages on the game screen;
* ignoring messages from selected players, groups, AI;
* the ability to issue commands to the AI (via the chat room);
* among the commands for the AI there are, for example, inquiries about the state of the ship, changes in firing and swimming modes, requests for permission to land, abandoning landing, indicating the point where the AI is to sail;
* the AI talks (sends messages) depending on the situation in the game;
* the AI can assist the player in sailing a ship, flying a plane, landing;
* the AI can control the guns on the player's ship (as a relief);
* full day and night cycle;
* change in the intensity of waves (turbulence) of the sea;
* effect of fog, clouds, waves;
* wind affecting gameplay;
* automatic change of time of day, fog and wave intensity;
* a wake (Kielwasser) behind ships;
* sun, moon, stars;
* stars with a fixed position indicating the directions of the world;
* two lighting modes for ships and land objects;
* rangefinder, spyglass, anchors;
* sending an SOS signal;
* camera tracking of projectiles;
* camera 'holding' to (following) the ship;
* free camera without any restrictions - camera movement speed at your discretion;
* artillery camera;
* indicating the point where the artillery shot was fired;
* several modes of displaying hit points;
* submarines with the possibility of immersion;
* exceeding the maximum immersion for a submarine (may result in damage);
* influence of speed on turning radius;
* planes and aircraft carriers where you can land, repair the plane and replenish ammunition;
* the ability to play both an aircraft carrier and an airplane at the same time;
* planes include a bomber and a torpedo bomber;
* simplified and normal landing mode on aircraft carriers;
* several modes of indicating the way to the selected point;
* showing the way for aircraft to the aircraft carrier that has agreed to land;
* placing sonar bearings on the game screen (as a facilitation of the game);
* defining group start positions on the map in land definitions and as separate start position definitions;
* the ability to save game settings;
* the ability to save the configuration of AI ships that are to take part in the game;
* the ability to save multiple key settings;
* search and filtering in key settings;
* checking the correctness of key settings;
* a design mode that makes it easier to create ships, maps and change the course of the game;
* land objects can be neutral, damage, heal, slow, bounce, replenish ammunition;
* land objects can be given durability and destroyed during the game;
* photo mode hiding on-screen informations;
* when creating ships and maps, you can use previously prepared objects (here called primitives), all available objects can be placed in loops to easily create larger groups of them;
* variable game speed;
* many options that can be adjusted according to your preferences;
* and other functionalities, which I invite you to get to know.

Known issues.
* Multiplayer isn't exactly stable and isn't very efficient. At the moment I don't really know how to improve it.
* Sometimes textures stop working.
* On some computers the game gets 'frozen'. Most likely the cause is one of the graphic effects (GLS.FireFX). If this happens, turn off some graphic effects in the options.
* On some computers there is an error converting screen coordinates to scene (game world) coordinates. Most likely the cause is GLS.SkyDome.TGLSkyDome (for GLS.SkyDome.TGLEarthSkyDome it works correctly). If this happens you should change 'Sky' in the options (also for radar).


<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20interfejs%201%20gra.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20interfejs%201%20gra%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20interfejs%202%20wieloosobowe.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20interfejs%202%20wieloosobowe%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20interfejs%203.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20interfejs%203%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20interfejs%204%20statystyki%201.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20interfejs%204%20statystyki%201%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20interfejs%204%20statystyki%202.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20interfejs%204%20statystyki%202%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20SI%20zagaduje.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2001%20SI%20zagaduje%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%201%20bombardowanie.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%201%20bombardowanie%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%202%20torpedowanie.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%202%20torpedowanie%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%203%20bomba%20g%C5%82%C4%99binowa.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%203%20bomba%20g%C5%82%C4%99binowa%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%204%20%C5%82%C3%B3d%C5%BA%20podwodna.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%204%20%C5%82%C3%B3d%C5%BA%20podwodna%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%205%20je%C5%BC%20g%C5%82%C4%99binowy.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%205%20je%C5%BC%20g%C5%82%C4%99binowy%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%206%20motor%C3%B3wka.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%206%20motor%C3%B3wka%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%207%20samolot%20i%20s%C5%82o%C5%84ce.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%207%20samolot%20i%20s%C5%82o%C5%84ce%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%208%20trafienie%201.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2002%208%20trafienie%201%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2003%201%20statki.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2003%201%20statki%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2003%202%20statki%20noc.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2003%202%20statki%20noc%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2003%203%20samoloty.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2003%203%20samoloty%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2003%204%20samoloty%20noc.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2003%204%20samoloty%20noc%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2003%205%20kotwice.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2003%205%20kotwice%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2001.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2001%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2002.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2002%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2003.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2003%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2004.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2004%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2005.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2005%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2006.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2006%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2007.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2007%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2008.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2008%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2009.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2009%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2010.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2010%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2011.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2011%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2012.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2012%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2013.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2013%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2014.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2014%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2015.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2015%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2016.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2016%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2017.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2004%20walka%2017%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20latarnia%20morska.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20latarnia%20morska%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2005%20SOS%201.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2005%20SOS%201%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2005%20SOS%202.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2005%20SOS%202%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2005%20korona.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2005%20korona%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20H%20S%201.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20H%20S%201%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20H%20S%202.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20H%20S%202%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20H%20S%203.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20H%20S%203%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20S%20H%201.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20S%20H%201%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20S%20H%202.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20S%20H%202%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20S%20H%203.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2006%20zamek%20S%20H%203%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2007%20niebo%201.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2007%20niebo%201%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2007%20niebo%202.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2007%20niebo%202%20m.jpg">
</a>

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%2007%20niebo%203.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%2007%20niebo%203%20m.jpg">
</a>

#


## Skrócona instrukcja / Quick guide:

1 - wybierz rodzaj gry;
2 - zainicjuj grę;
3 - wybierz mapę;
4 - opcjonalnie wybierz pozycje startowe dla statków;
5 - opcjonalnie dodaj graczy SI (boty) do gry;
6 - wybierz swój statek;
7 - wpisz swoją nazwę, określ grupę i ustaw status gotowości;
8 - rozpocznij grę.


1 - select the type of game;
2 - initiate the game;
3 - select a map;
4 - optionally select starting positions for ships;
5 - optionally add AI players (bots) to the game;
6 - choose your ship;
7 - enter your name, specify the group and set the ready status;
8 - start the game.

<a href="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%20Instrukcja.jpg">
  <img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/M/Statki%20z%20Eris%20Kallisti%20Dyskordia%20Instrukcja%20m.jpg">
</a>


#
Wersja 2021 02 08.

Version 2021 02 08.


<img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%202021%2002%2008%2001.jpg">

<img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%202021%2002%2008%2002.jpg">

<img src="https://github.com/jacek-mulawka/Statki-z-Eris-Kallisti-Dyskordia/blob/main/Gallery/Statki%20z%20Eris%20Kallisti%20Dyskordia%202021%2002%2008%2003.jpg">


#


Powered by

[GLScene](http://glscene.sourceforge.net),

[Delphi](https://www.embarcadero.com/products/delphi),

[OpenAL](http://www.openal.org),

[Google Translate](https://translate.google.com/) (voices).


## Tag
darmowa gra PC Windows statki okręty

free game PC Windows ships warships
