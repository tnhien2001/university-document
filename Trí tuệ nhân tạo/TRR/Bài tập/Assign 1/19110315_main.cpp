/*
// Ho ten: Trinh Ngoc Hien
// MSSV: 19110315
// Assignment: Bai 1
// Created at: 4/11/2021
// IDE: Visual Studio Code
*/
#include<stdio.h>


// In bang chan tri cua 5 phep toan logic co ban.

//table1:
void table_1(){//p ~p
    bool p = true;
    bool q = true;
    printf("\nTABLE 1:The Truth Table for the Negation of a Proposition.\n");
    printf("p \t ~p \t ");
    int i=0;
    while(i<2){
        if(i == 0){
            printf("\n%d \t %d ",p,!q);
        }
        
        if(i == 1){
            printf("\n%d \t %d ",!p,q);
        }
        i++;
    }
}

void table_2(){ //p v q
    bool p = true;
    bool q = true;
    bool r = true;
    printf("\nTABLE 2:The Truth Table for the Disjunction of Two Propositions.\n");
    printf("p \t q \t p v q");
    int i=0;
    while(i<4){
        if(i == 0){
            printf("\n%d \t %d \t %d", !p, !q, !r);
        }
        if(i == 1){
            printf("\n%d \t %d \t %d", !p, q, r);
        }
        if(i == 2){
            printf("\n%d \t %d \t %d", p, !q, r);
        }
        if(i == 3){
            printf("\n%d \t %d \t %d", p, q, r);
        }
        i++;
    }
    
}

void table_3(){ //p ^ q
    bool p = true;
    bool q = true;
    bool r = true;
    printf("\nTABLE 3:The Truth Table for the Conjunction of Two Propositions.\n");
    printf("p \t q \t p ^ q");
    int i=0;
    while(i<4){
        if(i == 0){
            printf("\n%d \t %d \t %d",!p,!q,!r);
        }
        if(i == 1){
            printf("\n%d \t %d \t %d",!p,q,!r);
        }
        if(i == 2){
            printf("\n%d \t %d \t %d",p,!q,!r);
        }
        if(i == 3){
            printf("\n%d \t %d \t %d",p,q,r);
        }
        i++;
    }
    
}

void table_4(){ //p -> q
    bool p = true;
    bool q = true;
    bool r = true;
    printf("\nTABLE 4:The Truth Table for the Conditional Statement.\n");
    printf("p \t q \t p -> q");
    int i=0;
    while(i<4){
        if(i == 0){
            printf("\n%d \t %d \t %d",!p,!q,r);
        }
        if(i == 1){
            printf("\n%d \t %d \t %d",!p,q,r);
        }
        if(i == 2){
            printf("\n%d \t %d \t %d",p,!q,!r);
        }
        if(i == 3){
            printf("\n%d \t %d \t %d",p,q,r);
        }
        i++;
    }
}

void table_5(){ //p <-> q
    bool p = true;
    bool q = true;
    bool r = true;
    printf("\nTABLE 5:The Truth Table for the Biconditional.\n");
    printf("p \t q \t p <-> q");
    int i=0;
    while(i<4){
        if(i == 0){
            printf("\n%d \t %d \t %d",!p,!q,r);
        }
        if(i == 1){
            printf("\n%d \t %d \t %d",!p,q,!r);
        }
        if(i == 2){
            printf("\n%d \t %d \t %d",p,!q,!r);
        }
        if(i == 3){
            printf("\n%d \t %d \t %d",p,q,r);
        }
        i++;
    }
}

int main(){
    table_1();//Phu dinh '~'
    printf("\n----------------\n");
    table_2();//OR 'v'
    printf("\n----------------\n");
    table_3();//AND '^'
    printf("\n----------------\n");
    table_4();//Keo theo '->'
    printf("\n----------------\n");
    table_5();//Tuong duong '<->'
    printf("\n----------------\n");
    
    return 0;
}