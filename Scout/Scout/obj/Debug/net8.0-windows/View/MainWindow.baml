   M S B A M L   `   `   `  ����@  <Scout, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ScoutScout  5   	   1clr-namespace:Scout.ViewModelScout.ViewModel  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	       Scout.View.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Scout     5   	   ,vmclr-namespace:Scout.ViewModel     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	     � Title$  Scout��5
   	   $	��650��6   $
��1200��6$   ��5      �� 5   
    �� ImageSource$ tlo.jpg��6    j� Stretch$ UniformToFill=�6+    � DataContext 5      %   Scout.ViewModel.PlayerViewModel  5   
   .��5      � $��10q�6   .+�5   
   �� ���	#800000006   � 5   
    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $��* �6    .+�5"      �� $��0��6   $��Scouting Manager��6%   $
��Bold"�6=   $��20(�6O   $��Center=�5#      $��0,0,0,10q�65   
�������6G   � 5&      $��1��6    � ColumnDefinitions 5'      �� 5(      $��3* �6'   �� 5)      $��2* �6'   .+�5-      &   System.Windows.Controls.DataGrid  $��0��6      AutoGenerateColumns$ False��5.         CanUserAddRows$ False��67      
IsReadOnly$ False��5/      	   SelectionMode$	 Single=�6.   $��5,0,0,5q�50   Q   ��5-   +   �� *PlayersView+
 �� SelectedItem
 50      �� *SelectedPlayer+ �� Mode$ TwoWay=�   RowStyle 51      �� 52       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6     �� Triggers 53      �� 54   "    �� Binding 6.   �� *	Potential+ �� Value
 Wysoki6L   .a�55   &   ��  �� Property � �� �� Value
 ����6C   56   #   �� 57   "    6.   �� *	Potential+	 Niski6L   .a�58   &   ��  � �� �	#FFFFC0C06C   59   #   5;         Columns 5=      0  *System.Windows.Controls.DataGridTextColumn  5>      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6-      
IsReadOnly$
 True��6V      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6h   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *
PlayerId+6h     5?      $ Imię��6-   $ * 6T    6;   �� *Name+6T     5@      $ Nazwisko��6-   $ * 6[    6?   �� *	Surname+6[     5A      $
 Wiek��6-   $
 Auto 6S    6;   �� *Age+6S     5B      $ Pozycja��6-   $ * 6[    6>   �� *
Position+6[     5C      $
 Klub��6-   $ * 6T    6;   �� *Club+6T     5D      $
 Liga��6-   $ * 6V    6;   �� *League+6V     5E      $ 
Potencjał��6-   $ * 6^    6@   �� *	Potential+6^   5G      �� 5J      $��1��6   $��10,0,0,0q�6/   $
��Auto=�6A   $��Disabled=�6d   .��5K      �� $	��Top=�6!   .+�5N      �� $��Wyszukiwarka��6$   $
��Bold"�68   $��16(�6J    �� TextAlignment$ Center=�6X   $��0,0,0,10q�6o   
�������6�   � 5P      $��0,0,0,10q�6    5Q      �� 5R   "   $��70 �63   �� 5S   "   $��* �63    5U      �� 5V   "   $
��Auto �60   �� 5W   "   $
��Auto �60   �� 5X   "   $
��Auto �60   �� 5Y   "   $
��Auto �60   �� 5Z   "   $
��Auto �60   �� 5[   "   $
��Auto �60   �� 5\   "   $
��Auto �60   .+�5_      �� $��Imię:��6(   $��0��65   $��0��6B   $��Center=�6R   $��0,0,5,5q�6m   
�������6~   �� 5`      $��0��6g   $��1��6t   $	��150��6�   $��0,0,5,5q�6�   ��6&   �� *
SearchName+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5b      $��	Nazwisko:��6(   $��1��69   $��0��6F   $��Center=�6V   $��0,0,5,5q�6q   
�������6�   �� 5c      $��1��6j   $��1��6w   $	��150��6�   $��0,0,5,5q�6�   ��6&   �� *SearchSurname+$ PropertyChanged=�6�   �� 5e      $��Wiek:��6(   $��2��65   $��0��6B   $��Center=�6R   $��0,0,5,5q�6m   
�������6~   �� 5f      $��2��6f   $��1��6s   $	��150��6�   $��0,0,5,5q�6�   ��6&   �� *	SearchAge+$ PropertyChanged=�6�   �� 5h      $��Pozycja:��6(   $��3��68   $��0��6E   $��Center=�6U   $��0,0,5,5q�6p   
�������6�   �� 5i      $��3��6t   $��1��6�   $	��150��6�   $��0,0,5,5q�6�   
 6'   �� *SearchPosition+$ PropertyChanged=���5j   "   1&clr-namespace:System;assembly=mscorlibSystem 5k   @   �� 6&   6sys&clr-namespace:System;assembly=mscorlib     6@    �� Type" ��6.   .s�5l   *   ��Bramkarz��6?   ��5m   *   Obrońca��6>   ��5n   *   Pomocnik��6?   ��5o   *   	Napastnik��6@   5p   '   5r      �� 5t      $��Klub:��6(   $��4��65   $��0��6B   $��Center=�6R   $��0,0,5,5q�6m   
�������6~   �� 5u      $��4��6g   $��1��6t   $	��150��6�   $��0,0,5,5q�6�   ��6&   �� *
SearchClub+$ PropertyChanged=�6�   �� 5w      $��Liga:��6(   $��5��65   $��0��6B   $��Center=�6R   $��0,0,5,5q�6m   
�������6~   �� 5x      $��5��6i   $��1��6v   $	��150��6�   $��0,0,5,5q�6�   ��6&   �� *SearchLeague+$ PropertyChanged=�6�   �� 5z      $��Potencjał:��6(   $��6��6:   $��0��6G   $��Center=�6W   $��0,0,5,5q�6r   
�������6�   �� 5{      $��6��6u   $��1��6�   $	��150��6�   $��0,0,5,5q�6�   
 6'   �� *SearchPotential+$ PropertyChanged=���5|   "   1&clr-namespace:System;assembly=mscorlibSystem 5}   @   �� 6&   6sys&clr-namespace:System;assembly=mscorlib     6@   " ��6.   .s�5~   *   ��	Niski��6<   ��5   *   Średni��6=   ��5�   *   
Wysoki��6=   5�   '   5�      5�      �� 5�       �� Orientation$ 
Horizontal=�6%   $��0,0,0,10q�6>   $��Center=�6P   .+�5�      �� $��Wyczyść filtry��6%   $	��5,2q�6b   $	��110��6p   ��6>   �� *ClearAllFilters+6p   5�      �� 5�      $
��0,10q�6$   �� 5�      $��Dodaj/Usuń/Edytuj��6$   $
��Bold"�6=   $��16(�6O   $ Center=�6]   $��0,0,0,2q�6t   
�������6�   �� 5�      $5��/(Po zmianie wartości komórki klknij 'Edytuj')��6$   $
��Bold"�6Y   $��11(�6k   $ Center=�6y   $��0,0,0,10q�6�   
�������6�   � 5�       5�      �� 5�   "   $��70 �63   �� 5�   "   $��* �63    5�      �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   .+�5�      �� $��Imię:��6(   $��0��65   $��0��6B   $��Center=�6R   $��0,0,5,5q�6m   
�������6~   �� 5�      $��0��6k   $��1��6x   $	��150��6�   $��0,0,5,5q�6�   ��6&   �� *NewPlayer.Name+$ PropertyChanged=�6�   �� 5�      $��	Nazwisko:��6(   $��1��69   $��0��6F   $��Center=�6V   $��0,0,5,5q�6q   
�������6�   �� 5�      $��1��6n   $��1��6{   $	��150��6�   $��0,0,5,5q�6�   ��6&   �� *NewPlayer.Surname+$ PropertyChanged=�6�   �� 5�      $��Wiek:��6(   $��2��65   $��0��6B   $��Center=�6R   $��0,0,5,5q�6m   
�������6~   �� 5�      $��2��6j   $��1��6w   $	��150��6�   $��0,0,5,5q�6�   ��6&   �� *NewPlayer.Age+$ PropertyChanged=�6�   �� 5�      $��Pozycja:��6(   $��3��68   $��0��6E   $��Center=�6U   $��0,0,5,5q�6p   
�������6�   �� 5�      $��3��6x   $��1��6�   $	��150��6�   $��0,0,5,5q�6�   
 6'   �� *NewPlayer.Position+$ PropertyChanged=���5�   "   1&clr-namespace:System;assembly=mscorlibSystem 5�   @   �� 6&   6sys&clr-namespace:System;assembly=mscorlib     6@   " ��6.   .s�5�   *   ��Bramkarz��6?   ��5�   *   Obrońca��6>   ��5�   *   Pomocnik��6?   ��5�   *   	Napastnik��6@   5�   '   5�      �� 5�      $��Klub:��6(   $��4��65   $��0��6B   $��Center=�6R   $��0,0,5,5q�6m   
�������6~   �� 5�      $��4��6k   $��1��6x   $	��150��6�   $��0,0,5,5q�6�   ��6&   �� *NewPlayer.Club+$ PropertyChanged=�6�   �� 5�      $��Liga:��6(   $��5��65   $��0��6B   $��Center=�6R   $��0,0,5,5q�6m   
�������6~   �� 5�      $��5��6m   $��1��6z   $	��150��6�   $��0,0,5,5q�6�   ��6&   �� *NewPlayer.League+$ PropertyChanged=�6�   �� 5�      $��Potencjał:��6(   $��6��6:   $��0��6G   $��Center=�6W   $��0,0,5,0q�6r   
�������6�   �� 5�      $��6��6y   $��1��6�   $	��150��6�   $��0,0,5,5q�6�   
 6'   �� *NewPlayer.Potential+$ PropertyChanged=���5�   "   1&clr-namespace:System;assembly=mscorlibSystem 5�   @   �� 6&   6sys&clr-namespace:System;assembly=mscorlib     6@   " ��6.   .s�5�   *   ��	Niski��6<   ��5�   *   Średni��6=   ��5�   *   
Wysoki��6=   5�   '   5�      5�      �� 5�      $ 
Horizontal=�6%   $��Center=�6>   $��0,10,0,0q�6[   .+�5�      �� $��Dodaj��6%   $��70��6S   $��0,0,5,0q�6^   ��65   �� *	AddPlayer+6^   �� 5�      $��Usuń��6%   $��70��6U   $��0,0,5,0q�6`   ��64   �� *DeletePlayer+6`   �� 5�      $��Edytuj��6%   $��70��6[   ��66   �� *SaveEditedPlayer+6[   5�      5�      5�      5�      5�      5�      5�      