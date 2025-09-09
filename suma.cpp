#include <iostream>
#include <stdlib.h>
using namespace std;
class Operacion{
    private:
        int a,b;
    public:
        Operacion(int a, int b);
        int sumar();
        void resta();
};
Operacion::Operacion(int a_a, int b_b)
{
 a = a_a;
 b = b_b;    
}

int Operacion::sumar(){
 return a +b;
}



int main(){
    int n1,n2;
    cout<< "ingresa tu un numero";
        cin>>n1;
    cout<< "ingresa tu otro numero";
        cin>>n2;
    Operacion op(n1,n2);
cout<<"la suma es:"<<op.sumar()<<endl;
}