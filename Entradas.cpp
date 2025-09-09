#include <iostream>
//cout para escribir
//cin para entrada
int main(){
    std::string Nombre;
    int edad;
    std::cout<<"¿Cual es su edad jovensuelo?\n";
    std::cin >> edad;
    std::cout<<"Cual es tu nombre?"<<"\n";
    std::getline(std::cin>>std::ws, Nombre);
    std::cout<<"Felicidades "<<Nombre<<" tienes "<<edad<<" Anos";
    return 0; 
}