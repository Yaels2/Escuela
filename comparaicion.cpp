#include <iostream>
#include <stdlib.h>
#include<math.h>
using namespace std;
int main(){
    int n1,n2;
    cout<<"¿ingresa numero?\n"<<endl;
    cin >> n1;
    cout<<"¿ingresa numero?\n"<<endl;
    cin >> n2;
    if(n1>n2){
        cout<<"el numero mas grande es" <<n1<<endl;
    }
    else if (n2>n1){
        cout<<"el numero mas grande es" <<n2<<endl;
    }else{
        cout<<"son iguales xd"<<endl;
    }
    
    
return(0);
}