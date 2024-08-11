#include <iostream>



class Usuario{
	private:
		char nick[50], pass[50]; 
	public:
		Usuario();
		Usuario(char nombre[], char contra[], int size_nombre, int size_contra);
		void getNick(char nombre[], int size_nombre);
		void getPass(char contra[], int size_contra);
		void setNick(char nombre[], int size_nombre);
		void setPass(char contra[], int size_contra);
		~Usuario();
}


