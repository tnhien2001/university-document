#include<stdio.h>
#include<stdlib.h>

struct Node{
    char data;
    struct Node *link;
};

struct LinkedList{
    struct Node *firstNode;
    struct Node *lastNode;
};

void print(struct LinkedList list){
    struct Node *first = list.firstNode;
    struct Node *last = list.lastNode;
    int index = 0;

    while(first != NULL){
        printf("%4c at %d\n", first->data, index);
        first = first->link;
        index++;
    }

    while(last != NULL){
        printf("%4c at %d\n", last->data, index);
        last = last->link;
        index++;
     }

}

char read(struct LinkedList list, int i){
    struct Node *first = list.firstNode;
    int index = 0;

    while(first != NULL){
        if(index == i){
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
    list->lastNode = NULL;
}



//insertHead:
void insertHead(struct LinkedList *list, char data){
    struct Node *newNode = malloc(sizeof(struct Node));

    //newNode
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

//insertTail
void insertTail(struct Node** head_ref, char new_data)
{
    struct Node* new_node = (struct Node*) malloc(sizeof(struct Node));
    struct Node *last = *head_ref;

    new_node->data  = new_data;
    new_node->link = NULL;

    if (*head_ref == NULL)
    {
       *head_ref = new_node;
       return;
    }

    while (last->link != NULL)
        last = last->link;

    last->link = new_node;
    return;
}


//insert vi tri bat ky
void insertPos(struct LinkedList *list, char data, int position){
    int n = 1;
    

    if(position == 0 || list->firstNode == NULL){
        insertHead(list,data);
        return;
    }

    else{
        struct Node *temp = malloc(sizeof(struct Node));
        temp->data = data;
        temp->link = NULL;

        temp = list->lastNode;
        while(temp != NULL && n != position){
            temp = temp->link;
            ++n;
        }
    }

    if(n != position){
        insertTail(list,data);
        return;
    }
}

void delNode(struct Node **head_ref, int position) 
{ 
    struct Node *temp = *head_ref, *prev; 
  
    
    if (temp != NULL && temp->data == position) 
    { 
        *head_ref = temp->link;   // Changed head 
        free(temp);               // free old head 
        return; 
    } 
  
    // Search for the position to be deleted, keep track of the 
    while (temp != NULL && temp->data != position) 
    { 
        prev = temp; 
        temp = temp->link; 
    } 
  
    if (temp == NULL) return; 
    prev->link = temp->link; 
    free(temp);  // Free memory 
} 


int main(){
    struct LinkedList list;

    init(&list);

    insertHead(&list,'a');
    insertHead(&list,'b');
    insertTail(&list,'c');
    insertTail(&list,'d');
    insertPos(&list,'e',0);
    
    // print(list);
    print(list);
    
    return 0;
}
