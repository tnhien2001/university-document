// Chuong 8: Stack.

#include<stdio.h>

void push(int stack[], int *top, int value){
    stack[(*top) + 1] = value;
    (*top)++;
    
}

int pop(int stack[], int *top){
    (*top)--;
    return stack[(*top) + 1];
    
}
    
int isFull(int stack[], int top);



int isEmpty(int stack[], int *top){
    if(*top <= -1){
        return 1;
    }
    return 0;
}



int main(){
    int stack[100], top = -1;
    // if(!isFull(stack, top)){
    //     push(stack, &top, 5);
    // }
    
    if(!isEmpty(stack,&top)){
        int value = pop(stack, &top);
        printf("%d", value);
    }
    
    return 0;
}