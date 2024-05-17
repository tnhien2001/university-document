#include<stdio.h>
#define MAX  100

void put(int queue[], int *tail, int value){
    if((*tail) + 1 >= MAX - 1){
        *tail = 0;
        queue[0] = value;
    }else{
        queue[(*tail) + 1] = value;
        (*tail)++;
    }
    
}

int get(int queue[], int *head){
    int result = queue[(*head)-1];
    (*head)++;
    if(*head >= MAX)
        *head = 0;

    return queue[(*head)-1];
    
}

int isEmpty(int queue[], int head, int tail){
    if(head == tail + 1){
        return 1;
    }
    return 0;
}

int isFull(int queue[], int tail){
    if(tail >= MAX - 1){
        return 1;
    }
    return 0;
}


int main(){
    int queue[MAX];
    int head = 0;
    int tail = -1;

    int result; 

    if(isFull(queue, tail) == 1){
        printf("The Queue is full");
    }
    else{
        printf("The Queue is not full");
        put(queue,&tail,5);
        put(queue,&tail,3);
    }

    if(!isEmpty(queue,head,tail)){
        result = get(queue, &head);
        printf("%d",result);
        result = get(queue, &head); 
        printf("%d",result);

    }
    
 
    
    // if(isEmpty(&head, &tail) == 1){
        
    // }

    return 0;
}