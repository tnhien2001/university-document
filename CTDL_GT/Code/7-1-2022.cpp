#include<stdio.h>
#include<stdlib.h>

struct Node{
    char data;
    struct Node *link;
};

struct LinkedList{
    struct Node *firstNode;
};

void print(struct LinkedList list){
    struct Node *first = list.firstNode;
    int index = 0;

    while(first != NULL){
    printf("%4c at %d\n", first->data, index);
    first = first->link;
    index++;
    }
}

char read(struct LinkedList list, int i){
    struct Node *first = list.firstNode;
    int index = 0;

    while(first != NULL){
        if(index == i){
            // printf("%4c at %d\n", first->data, index);
            return first->data;
        }

        first = first->link;
        index++;
    }
    return 0;
}

int search(struct LinkedList list, char value){
    struct Node *first = list.firstNode;

    while(first != NULL){
        if(first->data == value){
           return 1;
        }
        first = first->link;
    }
    return 0;
}

void init(struct LinkedList *list){
    list->firstNode = NULL;
}

void insert(struct LinkedList *list, char data){
    struct Node *newNode = malloc(sizeof(struct Node));
    newNode->data = data;
    newNode->link = NULL;

    //list is empty
    if(list->firstNode == NULL){
        list->firstNode = newNode;
        return;
    }
    //list is not empty
    newNode->link = list->firstNode;
    list->firstNode = newNode;
}

int main(){
    struct Node a, b, c, d, e;
    a.data = 'a';   a.link = &b;
    b.data = 'b';   b.link = &c;
    c.data = 'c';   c.link = &d;
    d.data = 'd';   d.link = NULL;
    e.data = 'e';   e.link = NULL;

    struct LinkedList list;
    list.firstNode = &a;

    e.link = &a;
    list.firstNode = &e;
    
    // print(list);
    char value = read(list, 3);
    printf("%c\n",value);

    int result = search(list, 'g');
    printf("%d",result);

    // struct LinkedList list;
    // init(&list);

    // insert(&list, 'a');
    // insert(&list, 'b');
    // insert(&list, 'c');
    // insert(&list, 'd');
    // print(list);

    return 0;
}