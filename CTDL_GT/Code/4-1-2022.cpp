#include<stdio.h>
#include<stdlib.h>

// int main(){
//     int *a;
//     a = (int *) malloc(10 * sizeof(int)) ;
//     a[0] = 1;
//     a[1] = 2;
//     a[10] = 11;

//     for(int i=0; i<11; i++)
//         printf("%4d",a[i]);
    
    
//     return 0;
// }

struct Node{
    char data;
    struct Node *link;

};

int main(){
    struct Node a, b;
    a.data = 'a';
    a.link = &b;

    b.data = 'b';
    b.link = NULL;

    printf("%p\n", a.link);
    printf("%p", b);
}
