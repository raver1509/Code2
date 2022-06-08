#include <stdio.h>
#include "libsquare.h"
#include "libcube.h"

int main(){
    int length1 = 0, length2 = 0;
    char option = '1';
    while(option!='q'){
        if (option == '1' || option == '2'){
            printf ("Wybierz 1, jeśli chcesz obliczyć pole kwadratu, 2 pole sześcianu, wybierz q jeśli chcesz zakończyć działanie programu: \n");
        }
        option = getchar();
        if(option =='1' || option=='2'){
        switch (option)
            {
                case '1': 
                    printf ("Podaj bok kwadratu: ");
                    scanf ("%d", &length1);
                    printf ("Pole podanego kwadratu wynosi: %d\n", SquareArea(length1));
                    break;
                case '2':
                    printf ("Podaj długość krawędzi sześcianu: ");
                    scanf ("%d", &length2);
                    printf ("Objętość podanego sześcianu wynosi: %d\n", CubeVolume(length2));
                    break;
            }
        }
    }
}