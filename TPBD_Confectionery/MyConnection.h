
#include <string.h>
#include <list>
#include <msclr\marshal_cppstd.h>
#include <cctype>   // для функции isdigit
#include <algorithm> 

using namespace System;
using namespace System::ComponentModel;
using namespace System::Collections;
using namespace System::Windows::Forms;
using namespace System::Data;
using namespace System::Drawing;
using namespace System::Data::SqlClient;
using namespace std;



ref class MyConnection {
	private:
		
		SqlConnection^ myconn;
		SqlConnectionStringBuilder^ connectionstring;

	public:
		MyConnection() {
			////Data Source = ASUS; Initial Catalog = TP_Confectionery; Integrated Security = True
			connectionstring = gcnew SqlConnectionStringBuilder();
			connectionstring->DataSource = "ASUS";
			connectionstring->InitialCatalog = "TP_Confectionery";
			connectionstring->IntegratedSecurity = true;
			myconn = gcnew SqlConnection(Convert::ToString(connectionstring));
			myconn->Open();
		};

		~MyConnection()
		{
			Close_Connection();
		}
		void Close_Connection() {
			myconn->Close();
		}
		
		//Функции для первой формы
		list<string> viewm_show_shops();
		void insert_into_shops(String^ name, Decimal profit, Decimal costs);
		list<string> get_hight_shop();
		void update_costs_shops(String^ name);//CLR -функция
		void update_profit_shops(String^ name);
		list<string> insert_into_employees(String^ firstname, String^ lastname, String^ middlename, String^ nameofshop);
		list<string> show_employees();

		//Функции для второй формы
		void insert_into_products(String^ name, String^ kollvo, String^ shelflife, String^ price, String^ name_shop);
		list<string> view_products();
		void update_products(String^ name, String^ value, int number_of_ratio);
		list<string> delay_control_products(String^ value);

		//Функции для третьей формы
		void insert_into_ingredients(String^ name, String^ kollvo, String^ price);
		list<string> view_ingredients();
		void update_ingredients(String^ name, String^ value, int number_of_ratio);
		list<string> control_ingredients(String^ value);

		//Функции для 4-ой формы
		void insert_into_ingreidents_in_products(String^ nameofproduct, String^ nameofingreident);
		void delete_ingredients_in_products(String^ nameofproduct, String^ nameofingreident);
		list<string> show_composition(String^ nameofproduct,int number_of_ration);
		
};

void MarshalString(String ^ s, string& os);
bool isChislo(String^);