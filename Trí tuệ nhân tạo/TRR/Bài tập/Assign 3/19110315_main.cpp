/*
// Ho ten: Trinh Ngoc Hien
// MSSV: 19110315
// Assignment: Bai 3
// Created at: 28/12/2021
// IDE: Visual Studio Code
*/

#include<iostream>
#include<fstream>

using namespace std;
#define MAX 1000
#define inf 10000000

int a[MAX][MAX];
int matrix[MAX], truy_vet[MAX], check[MAX];
int min_value;
int path[MAX], d;

int check_graph;
int node;
int start, end;


void readfile(){
	fstream file("thong_tin_dinh.txt",ios::in);
	if(file == NULL){
		printf("File khong dung ! Vui long nhap lai file");
	}

	//check_graph la kiem tra do thi la do thi gi?
	file >> check_graph;
	// node la so dinh.
	file >> node;

    for(int i=1; i<=node; i++){
        for(int j=1; j<=node; j++){
            a[i][j] = -1;
        } 
    }
    if(check_graph == 1){
        for(int i=1; i<=node+1; i++){
        int p,q;
        file>>p>>q;
        file>>a[p][q];
        }
    }
    
    else{
        for(int i=1; i<=node+1; i++){
        int p,q;
        file>>p>>q;
        file>>a[p][q];
        a[q][p] = a[p][q];
        }
    }

    file>>start;
    file>>end;
	file.close();

}



void dijkstra(){
    for(int i=1; i<=node; i++){
        matrix[i] = inf;
        check[i] = true;
        truy_vet[i] = 0;
    }

    matrix[start] = 0;
    truy_vet[start] = 0;
    int  v=start;
    while(start!=end){
        //tim v
        min_value = inf;
        for(int i=1; i<=node; i++)
        if(check[i] == true && min_value > matrix[i]){
            min_value = matrix[i];
            v = i;
        }
        if(min_value == inf) break;

        //xoa v khoi t2
        check[v] = false;

        //toi uu cac dinh trong t2
        for(int i=1; i<=node; i++)
        if(a[v][i] > 0 && matrix[i]> matrix[v] + a[v][i]){
            matrix[i] = matrix[v] + a[v][i];
            truy_vet[i] = v;
        } 
        
    }
}

void output(){
    fstream xuat_file("ket_qua_bai_3_19110315.txt",ios::out);

    if(matrix[end] == inf) xuat_file<<"Khong co duong di ngan nhat";
    else{
        xuat_file<<"Tong chi phi di chuyen = "<<matrix[end]<<endl;
        d=0;
        d++;
        path[d] = end;
        while(truy_vet[end] != 0){
            end = truy_vet[end];
            d++;
            path[d] = end;
        }

        xuat_file<<"Duong di ngan nhat cua do thi la ";
        char c[] = "-> ";
        for(int i=d; i>0; i--){
            
            if(i>0 && (i-1)>0){
                xuat_file<<path[i]<<" ";
                xuat_file<<c; 
            }
            else{
                xuat_file<<path[i]<<" ";
            }
                      
        }
        
    }
    xuat_file.close();
}

int main(){
	readfile();
	dijkstra();
	output();
}
