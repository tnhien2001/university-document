/*
// Ho ten: Trinh Ngoc Hien
// MSSV: 19110315
// Assignment: Bai 2
// Created at: 8/12/2021
// IDE: Visual Studio Code
*/

#include<iostream>
#include<fstream>
#include<queue>
#include<string>
#include<stdlib.h>

using namespace std;
#define MAX 100

//Khai bao cac bien can thiet:
int n, matrix[MAX][MAX];
bool visited[MAX];

//Doc file va kiem tra xem file co mo duoc khong.
int readfile(){
	ifstream file("input_dothi.txt",ios::in);
	if(file == NULL){
		return 0;
	}
	file.close();
	return 1;
}

void saveData(){
	//Lay kich thuoc cua ma tran ke:
	std::ifstream input("input_dothi.txt");
    string line;

    getline(input,line);
	for(int i = 0; getline(input,line); i++)
    {
        string element = "";
        n = 0; // Bat dau moi hang, cho chi so khoi tao = 0.
        for(int t = 0; t < line.length(); ++t){
            if(line[t] != ' '){
                // Neu ky tu hien tai la dau cach => Noi vao bien element.
                element += line[t];
            }
            // Neu ky tu hien tai la dau cach, hoac la ky tu cuoi hang.
            if(line[t] == ' ' || t == line.length()- 1){
                // Thuc hien chuyen string thanh so int bang ham atoi
                // Ham atoi nhan bien kieu char*, do do cho phep chuyen tu string ve char*.
                matrix[i][n] = atoi(element.c_str());
                // Tang chi so cua dinh.
                n++;
                // Dat lai gia tri cua element.
                element = ""; 
            }
        }
          
    }
	input.close();
	
	ifstream file("input_dothi.txt",ios::in);
	for(int i=1; i<=n; i++){
		for(int j=1; j<=n; j++){
			file >> matrix[i][j];
		}
		visited[i] = false;
	}
	file.close();
}

void dsThanhPhanLienThong(int u){
	cout<< "Thanh phan lien thong: ";
	queue <int> Q;
	Q.push(u);
	visited[u] = true;
	
	while(!Q.empty()){
		
		int s = Q.front();	
		cout<<s<<" ";
		Q.pop();
		for(int t = 1; t<=n; t++){
			if(visited[t] == false && matrix[s][t] == 1){
				Q.push(t);
				visited[t] = true;
			}
		}
		
	}
	
	cout<<endl;
}

void soluongThanhPhanLienThong(){
	int soLienThong = 0;
	for(int v=1; v<=n; v++)
	{
		if(visited[v] == false)
		{
			dsThanhPhanLienThong(v);
			soLienThong++;
		}
	}
	cout<<"So luong thanh phan lien thong: "<<soLienThong;
	
}

int main(){
	
	readfile();
	if(readfile() == 1){
		saveData();
		soluongThanhPhanLienThong();
	}

	else{
		cout<<"File khong dung ! Vui long nhap lai file! ";
	}
	
	return 0;
}

