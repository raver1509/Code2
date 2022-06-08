
# Code2

## Opis działania 

Program Code2 służy do obliczania pola kwadratu oraz objętości sześcianu.
Po jego uruchomieniu pyta się, którą czynność chce wykonać.
Działa na zasadzie menu wielokrotnego wyboru, po wybraniu odpowiedniej z opcji wyłącza się.

## Kroki niezbędne do poprawnej kompilacji

Ponieważ biblioteka libcube.so jest biblioteką współdzieloną program main musi wiedzieć, gdzie się ona znajduje.
W tym celu poprzez należy wydać polecenie:
```
$ export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.
```
W ten sposób dodajemy nową ścieżkę do poprzedniej bez nadpisywania jej. W sytuacji, gdyby biblioteka została przeniesiona do innej lokalizacji należy ją podać zamieniając "." na ściężkę absolutną lub w relacji do programu main.

W celu uruchomienia programu należy wydać polecenie:
```
$ ./main
```