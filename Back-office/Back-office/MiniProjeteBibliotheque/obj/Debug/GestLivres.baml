   M S B A M L   `   `   `  ����R  NMiniProjeteBibliotheque, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:MiniProjeteBibliothequeMiniProjeteBibliotheque  5   
   (    "MiniProjeteBibliotheque.GestLivres   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   g cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ac _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   3local%clr-namespace:MiniProjeteBibliotheque   5   
     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)    � WindowStartupLocation$ CenterScreen=�65   .��5      �� ���#eff2f7 �� CornerRadius$ 15��6"   ._�5   
   �  � ColumnDefinitions 5      �� 5      $	��150 �6#   �� 5      $��* �6#   .+�5      %   MiniProjeteBibliotheque.SideBar  � 5      $��1��6   $��30 20 20 20q�6#    � RowDefinitions 5      �� 5      $
��auto �6$   �� 5      $
��auto �6$   �� 5      $
��auto �6$   �� 5      $
��auto �6$   �� 5      $
��auto �6$   �� 5      $��* �6$   �� 5      $
��auto �6$   .+�5$      �� $��Livres��6   $��1��6*   $��32(�67   $��SemiBold"�6E   $��0 20 0 0q�5%      $
��Left=�6.   ���#1215186I   �� 5)      -   5         ��Name$ btnHide��5)   Q      	addButton#��[  6   $y�Visible=�6<   .��5*      ��  �� Orientation$ 
Horizontal=�6!   .+�5+      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$
 Plus=�60   $��Center=�6<   $��11��6W   $��11��6b   $��0 1 8 0q�5,   !   �� 5-      $��Ajouter livre��6$   5.      5/      �� 53      $��1��6   $��3��6'   ���#dae2ea$��	0 -1 0 10q�6I   �� 57      -   5        $ btnDeleteAll��57        RemoveButton#��[ 6/   $��0 10 0 0q�6V   $��2��6h   $
��Left=�6u   .��58      �� $ 
Horizontal=�6!   .+�59        $ Minus=�60   $��Center=�6=   $��11��6X   $��11��6c   $��0 1 8 0q�5:      �� 5;      $��Supprimer Livres��6$   5<      5=      �� 5A      -   5         ��Name$ gridChercherTxt��5A      $��Chercher un livre��65   $��2��6N   $��13(�6[   $��SemiBold"�6i   $��
0 0 215 0 q�6   ���#121518$��right=�5B   1   $��Center=�6M   � 5E      -   5        	 �Name$	 gridChercher��5E   L   $	��200��6   $��Right=�6#   $��2��6?   .+�5F      �� -   5        
 ��Name$
 	txtFilter��5F        textboxFilter#��[ 61   6X   5H      � 5L      -   5        $��4��5L   ,   .+�5M      &   System.Windows.Controls.DataGrid  -   5          Name$ livreDataGrid��5M      $y�Visible=�66     DataGridStyle1#���  6K     DataGridCellStyle1   	CellStyle# �  6t     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6�     DataGridRowStyle1   RowStyle# �  6�   $��5��6  $��	0,14,0,56q�6#  $��2��66     Columns 5N      4  .System.Windows.Controls.DataGridCheckBoxColumn  5O      ,  &System.Windows.Controls.DataGridColumn   CanUserResize .     Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 6K     CheckBoxStyle11  +System.Windows.Controls.DataGridBoundColumn   ElementStyle# [ 6X      HeaderTemplate 5P   "   �� 5Q   &   .R�5R   *   ��  ��Name$ chkSelectAll��63   -   5        #��[ 5R   I   6�   5S   '   5U      0  *System.Windows.Controls.DataGridTextColumn  5X      -	   5        	txtId��   Header$ #��5X   @      
IsReadOnly .  .  $
 auto 6s      Binding 6�   �� *id+  5Y      -
   5        
txtLibelle��$ Titre��5Y   E    . $ * 6f    6p   �� *	libelle+  5Z      -   5        	txtAuteur��$ Titre��5Z   D    . $ * 6e    6o   �� *	nomAuteur+  5[      -   5        txtDateAjout��$ Date d'ajout��5[   G    . $ * 6o    6y   �� *	dateajout+ �� StringFormat$ {0:dd/MM/yyyy}��  5\      -   5        txtStock��$ Stock��5\   C    . $ * 6d    6n   �� *stock+4	  .System.Windows.Controls.DataGridTemplateColumn	  5^      $ 
Operations��65    . $
 auto 6[    	  CellTemplate 5_   "   �� 5`   &   .R�5a   *   �� $ 
Horizontal=�65   .+�5b   .   �� $ 	btnUpdate��6]   -   5          gridEditButton#��[ 5b   5   .��5c   2     $ PencilOffOutline=�6H    	 gridButtonIcon#��[	 6`   5d   /   �� 5e   .   $ 	btnDelete��6p   -   5         
 gridRemoveButton#��[
 5e   5   $��5 0 0 0q�6_   .��5f   2     $ DeleteOutline=�6H   #��[	 6]   5g   /   5h   +   5i   '   5l      5o      � 5q      -   5        $	 myForm��5q      $y�	Collapsed=�6+   .+�5r      �� .+�5s      �� -   5         ��Name$ Libell��5s   $   $��Libelle��64   �� 5t      -   5        $
 txLib��5t   &   $�� ��65   �� 5u      -   5        $	 nom��5u   $   $��Auteur��61   �� 5v      -   5        $
 txAuteur��5v   &   $�� ��68   �� 5w      -   5         ��Name$ DateI��5w   )   .+�5x   "   �� -   5        $ DateLib��5x   (   $��Date d'ajout��69   �� 5y   "   -   5        $
 txtDate��5y   *   {�.  6;   5z      �� 5{      -   5        $ StockLib��5{   $   $��Stock��66   �� 5|      -   5        $
 txtStoc��5|   &   $�� ��67   �� 5}      -   5        $ btnAddLivre��5}   H   #��[  6%   .��5~   "   �� $ 
Horizontal=�6-   .+�5   &     $
 Plus=�6<   $��Center=�6H   $��11��6c   $��11��6n   $��0 1 8 0q�5�       �� 5�   &   $��Ajouter livre��60   5�   #   5�      �� 5�      -   5        $ btnUpdateLivre��5�   H   #��[  6%   .��5�   "   �� $ 
Horizontal=�6-   .+�5�   &     $
 Plus=�6<   $��Center=�6H   $��11��6c   $��11��6n   $��0 1 8 0q�5�   !   �� 5�   &   $��Mise à jour livre��60   5�   #   5�      5�      5�      5�      5�      5�      5�      5�      