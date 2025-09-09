#include <iostream>
#include <stdlib.h>
using namespace std;
class NumeroBase{
    private:
        int num;
        float Bc;
    public:
        NumeroBase(int num, float Bc);
        float convertir();
};

NumeroBase::NumeroBase(int num_, float Bc_){
    int num = num_;
    int Bc = Bc_;
}

float NumeroBase::convertir(){
    
}