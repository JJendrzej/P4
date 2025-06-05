    using System;
    using System.Collections.ObjectModel;
    using System.ComponentModel;
    using System.Linq;
    using System.Runtime.CompilerServices;
    using System.Windows.Data;
    using System.Windows.Input;
    using Scout.Model;
    using Scout.ViewModels;

    namespace Scout.ViewModel
    {
        public class PlayerViewModel : BaseViewModel
        {
            public ObservableCollection<Player> AllPlayers { get; set; } = new();
            public ICollectionView PlayersView { get; }

            private string _searchName;
            public string SearchName
            {
                get => _searchName;
                set
                {
                    _searchName = value;
                    OnPropertyChanged();
                    PlayersView.Refresh();
                }
            }

            private string _searchSurname;
            public string SearchSurname
            {
                get => _searchSurname;
                set
                {
                    _searchSurname = value;
                    OnPropertyChanged();
                    PlayersView.Refresh();
                }
            }

            private string _searchPosition;
            public string SearchPosition
            {
                get => _searchPosition;
                set
                {
                    _searchPosition = value;
                    OnPropertyChanged();
                    PlayersView.Refresh();
                }
            }

            private string _searchClub;
            public string SearchClub
            {
                get => _searchClub;
                set
                {
                    _searchClub = value;
                    OnPropertyChanged();
                    PlayersView.Refresh();
                }
            }

            private string _searchLeague;
            public string SearchLeague
            {
                get => _searchLeague;
                set
                {
                    _searchLeague = value;
                    OnPropertyChanged();
                    PlayersView.Refresh();
                }
            }

            private string _searchPotential;
            public string SearchPotential
            {
                get => _searchPotential;
                set
                {
                    _searchPotential = value;
                    OnPropertyChanged();
                    PlayersView.Refresh();
                }
            }

            private string _searchAge;
            public string SearchAge
            {
                get => _searchAge;
                set
                {
                    _searchAge = value;
                    OnPropertyChanged();
                    PlayersView.Refresh();
                }
            }




            private Player _selectedPlayer = new Player();
            public Player SelectedPlayer
            {
                get => _selectedPlayer;
                set { _selectedPlayer = value; OnPropertyChanged(); }
            }

            private Player _newPlayer = new Player();
            public Player NewPlayer
            {
                get => _newPlayer;
                set { _newPlayer = value; OnPropertyChanged(); }
            }

            public ICommand AddPlayer { get; }
            public ICommand DeletePlayer { get; }
            public ICommand SaveEditedPlayer { get; }

            public ICommand ClearAllFilters { get; }



            public PlayerViewModel()
            {
                PlayersView = CollectionViewSource.GetDefaultView(AllPlayers);
                PlayersView.Filter = FilterPlayers;

                AddPlayer = new RelayCommand(AddPlayerExecute);
                DeletePlayer = new RelayCommand(DeletePlayerExecute);
                SaveEditedPlayer = new RelayCommand(SaveEditedPlayerExecute);
          
                ClearAllFilters = new RelayCommand(ClearAllFiltersExecute);

                LoadPlayers();
            }


            private void AddPlayerExecute()
            {
                if (string.IsNullOrWhiteSpace(NewPlayer.Name) || string.IsNullOrWhiteSpace(NewPlayer.Surname))
                    return;

                using var db = new ScoutDbContext();
                db.Players.Add(NewPlayer);
                db.SaveChanges();

                LoadPlayers();

                NewPlayer = new Player();
                OnPropertyChanged(nameof(NewPlayer));
            }

            private void DeletePlayerExecute()
            {
                if (SelectedPlayer == null || SelectedPlayer.PlayerId == 0)
                    return;

                using var db = new ScoutDbContext();
                var toRemove = db.Players.Find(SelectedPlayer.PlayerId);
                if (toRemove != null)
                {
                    db.Players.Remove(toRemove);
                    db.SaveChanges();
                }

                LoadPlayers();

                SelectedPlayer = new Player();
                OnPropertyChanged(nameof(SelectedPlayer));
            }

            private void SaveEditedPlayerExecute()
            {
                if (SelectedPlayer == null || SelectedPlayer.PlayerId == 0)
                    return;

                using var db = new ScoutDbContext();
                var player = db.Players.FirstOrDefault(p => p.PlayerId == SelectedPlayer.PlayerId);
                if (player != null)
                {
                    player.Name = SelectedPlayer.Name;
                    player.Surname = SelectedPlayer.Surname;
                    player.Age = SelectedPlayer.Age;
                    player.Position = SelectedPlayer.Position;
                    player.Club = SelectedPlayer.Club;
                    player.League = SelectedPlayer.League;
                    player.Potential = SelectedPlayer.Potential;

                    db.SaveChanges();
                    LoadPlayers();
                }
            }

            private void ClearAllFiltersExecute()
            {
                SearchName = null;
                SearchSurname = null;
                SearchPosition = null;
                SearchClub = null;
                SearchLeague = null;
                SearchPotential = null;
                SearchAge = null;
            }


            private bool FilterPlayers(object obj)
            {
                if (obj is not Player player)
                    return false;

                bool nameMatch = string.IsNullOrWhiteSpace(SearchName) || player.Name.ToLower().Contains(SearchName.ToLower());
                bool surnameMatch = string.IsNullOrWhiteSpace(SearchSurname) || player.Surname.ToLower().Contains(SearchSurname.ToLower());
                bool positionMatch = string.IsNullOrWhiteSpace(SearchPosition) || player.Position.ToLower().Contains(SearchPosition.ToLower());
                bool clubMatch = string.IsNullOrWhiteSpace(SearchClub) || (player.Club ?? "").ToLower().Contains(SearchClub.ToLower());
                bool leagueMatch = string.IsNullOrWhiteSpace(SearchLeague) || (player.League ?? "").ToLower().Contains(SearchLeague.ToLower());
                bool potentialMatch = string.IsNullOrWhiteSpace(SearchPotential) || (player.Potential ?? "").ToLower().Contains(SearchPotential.ToLower());

                bool ageMatch = true;
                if (!string.IsNullOrWhiteSpace(SearchAge) && int.TryParse(SearchAge, out int age))
                    ageMatch = player.Age == age;

                return nameMatch && surnameMatch && positionMatch && clubMatch && leagueMatch && potentialMatch && ageMatch;
            }

            private void LoadPlayers()
            {
                using var db = new ScoutDbContext();
                AllPlayers.Clear();
                foreach (var player in db.Players.ToList())
                    AllPlayers.Add(player);

                PlayersView.Refresh();
            }
        }
    }


