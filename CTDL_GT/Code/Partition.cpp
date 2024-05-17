// Tìm hiểu thuật toán Pattrition:
#include<stdio.h>

void partition(int a[], int start, int end){
    if(start == end) return;
    
    int pivot, left, right;

    pivot = end;
    left = start;
    right = end-1;

    while(left < right){
        //1. move the left
        
        while(a[left] < pivot && left < right){
            left++;
        }
        printf("\nLeft = %d\n",left);

        //2. move the right
        while(a[right] > pivot && left < right){
            right--;
        }
        printf("Right = %d\n",right);


        //3. swap values.
        int temp = a[left];
        a[left] = a[right];
        a[right] = temp;
        
        //left++; 
        //right--;

        for(int i=start; i<=end; i++){
            printf("%d\t", a[i]);
        }
        printf("\n");
    }


    //5. swap the left vs pivot.
    int temp = a[left];
        a[left] = a[pivot];
        a[pivot] = temp;

    for(int i=start; i<= end; i++){
            printf("%d\t", a[i]); 
    }
    printf("\n");

    // partition(a, start, left-1);
    // partition(a, left+1, end);
}

int main(){
    int a[] = {0, 5, 2, 1, 6, 4};
    int n = 6;
    
    partition(a, 0, n-1);
        
    return 0;
}