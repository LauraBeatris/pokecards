searchNodes=[{"doc":"Provides functions to create and handle a deck of pokemons","ref":"Pokecards.html","title":"Pokecards","type":"module"},{"doc":"Verifies if a deck constains a pokemonExamplesiex&gt; deck = Pokecards.create_deck iex&gt; Pokecards.constains?(deck, &quot;Name: Piplup, Ability: Torrent, Damage: 50&quot;) true","ref":"Pokecards.html#constains?/2","title":"Pokecards.constains?/2","type":"function"},{"doc":"Creates a deck of pokemonsExamplesiex&gt; deck = Pokecards.create_deck iex&gt; deck","ref":"Pokecards.html#create_deck/0","title":"Pokecards.create_deck/0","type":"function"},{"doc":"Returns a hand of a pokemon deck based on a hand_sizeExamplesiex&gt; hand = Pokecards.create_hand(5) iex&gt; length(hand) == 5 true","ref":"Pokecards.html#create_hand/1","title":"Pokecards.create_hand/1","type":"function"},{"doc":"Deal a deck of pokemons by a given a hand_sizeExamplesiex&gt; deck = Pokecards.create_deck iex&gt; { hand, _rest_of_hand } = Pokecards.deal(deck, 2) iex&gt; length(hand) == 2 true","ref":"Pokecards.html#deal/2","title":"Pokecards.deal/2","type":"function"},{"doc":"Loads a deck with the given deckname from the filesystemExamplesiex&gt; deck = Pokecards.load(&quot;test&quot;) iex&gt; deck","ref":"Pokecards.html#load/1","title":"Pokecards.load/1","type":"function"},{"doc":"Saves a deck with a given deckname to the filesystemReturns :okExamplesiex&gt; deck = Pokecards.create_deck iex&gt; Pokecards.save(&quot;cardname&quot;, deck) :ok","ref":"Pokecards.html#save/2","title":"Pokecards.save/2","type":"function"},{"doc":"Shuffles a deck of pokemonsExamplesiex&gt; deck = Pokecards.create_deck iex&gt; deck = Pokecards.shuffle(deck) iex&gt; deck","ref":"Pokecards.html#shuffle/1","title":"Pokecards.shuffle/1","type":"function"},{"doc":"Provides a model of a Pokemon","ref":"Pokemon.html","title":"Pokemon","type":"module"},{"doc":"&lt;img src=&quot;.github/logo.png&quot; width=&quot;200&quot;/&gt;PokecardsCards game for terminal to have fun playing with pokemons in a simple way. :pushpin: Table of ContentsInstallationGetting StartedFAQFound a bug? Missing a specific feature?ContributingLicense:construction_worker: InstallationYou need to install Elixir first, then in order to clone the project via HTTPS, run this command: git clone https://github.com/LauraBeatris/pokecards.gitSSH URLs provide access to a Git repository via SSH, a secure protocol. If you have a SSH key registered in your Github account, clone the project using this command: git clone git@github.com:LauraBeatris/pokecards.git:runner: Getting StartedRun the following command in order to start the Interactive Elixir Shell iex -S mix:bug: IssuesFeel free to file a new issue with a respective title and description on the Pokecards repository. If you already found a solution to your problem, i would love to review your pull request! Have a look at our contribution guidelines to find out about the coding standards.:tada: ContributingCheck out the contributing page to see the best places to file issues, start discussions and begin contributing.:closed_book: LicenseDocumention and application under development. Released in 2020. This project is under the MIT license.Made with love by Laura Beatris 💜🚀","ref":"readme.html","title":"Pokecards","type":"extras"}]