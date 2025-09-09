#include <iostream>
//sirve para un identificador a algo grande
//typedef int num;

//lo mismo
using num = int;

namespace bike{
    const num vn = 20;
    const num vm = 60;
}
namespace car{
    const num vn = 90;
    const num vm = 180;
}

int main(){
    using std::cout;
    cout<<"la velocidad minima de la bicicleta es: "<<bike::vn<<"\ny la velocidad maxima es: "<<bike::vm;
    cout<<"\nla velocidad minima de el carro es: "<<car::vn<<"\ny la velocidad maxima es: "<<car::vm;
    return 0;
}