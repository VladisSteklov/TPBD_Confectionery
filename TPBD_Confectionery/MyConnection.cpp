
#include "MyConnection.h"

using namespace std;

// ------------------------------------------------------------------------------------------


// ------------------------------------------------------------------------------------------
bool isChislo(String^ value) {
	string a; MarshalString(value, a);
	char* p;
	strtol(a.c_str(), &p, 10);
	if (*p == 0) return true; else return false;	
}
// ------------------------------------------------------------------------------------------
void MarshalString(String ^ s, string& os) {
	using namespace Runtime::InteropServices;
	const char* chars =(const char*)(Marshal::StringToHGlobalAnsi(s)).ToPointer();
	os = chars;
	Marshal::FreeHGlobal(IntPtr((void*)chars));
}
// ------------------------------------------------------------------------------------------

//Функции для первой формы------------------------------------------------------------------------------------------
//Функции для первой формы------------------------------------------------------------------------------------------

list<string> MyConnection::viewm_show_shops() {
	SqlCommand^ myCommand = gcnew SqlCommand("view_shops",myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	SqlDataReader^ reader = myCommand->ExecuteReader();
	list<string> buffer;
	while (reader->Read()) {
		string table_string; 
		MarshalString(reader[0]->ToString(),table_string);
		buffer.push_front(table_string);
		MarshalString(reader[1]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[2]->ToString(), table_string);
		buffer.push_front(table_string);
	}
	reader->Close();
	return buffer;
}

void MyConnection::insert_into_shops(String^ name, Decimal profit, Decimal costs)
{
	SqlCommand^ myCommand = gcnew SqlCommand("insert_into_shops", myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	myCommand->Parameters->AddWithValue("@name", name);	
	myCommand->Parameters->AddWithValue("@profit", profit);
	myCommand->Parameters->AddWithValue("@costs", costs);
	myCommand->ExecuteNonQuery();
}

list<string> MyConnection::get_hight_shop() {
	SqlCommand^ myCommand = gcnew SqlCommand("get_Hight_Shop", myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	SqlDataReader^ reader = myCommand->ExecuteReader();
	list<string> buffer;
	while (reader->Read()) {
		string table_string;
		MarshalString(reader[0]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[1]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[2]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[3]->ToString(), table_string);
		buffer.push_front(table_string);
	}
	reader->Close();
	return buffer;

}


void MyConnection::update_costs_shops(String^ name){
	//CLR -функция
}


void MyConnection::update_profit_shops(String^ name) {
	SqlCommand^ myCommand = gcnew SqlCommand("update_shops_profit", myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	myCommand->Parameters->AddWithValue("@name", name);
	myCommand->ExecuteNonQuery();
	return;

}


list<string> MyConnection::insert_into_employees(String^ firstname, String^ lastname, String^ middlename, String^ nameofshop) {
	SqlCommand^ myCommand = gcnew SqlCommand("insert_into_employees", myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	myCommand->Parameters->AddWithValue("@fistname",firstname);
	myCommand->Parameters->AddWithValue("@lastname",lastname );
	myCommand->Parameters->AddWithValue("@middlename",middlename);
	myCommand->Parameters->AddWithValue("@name",nameofshop);
	SqlDataReader^ reader = myCommand->ExecuteReader();
	list<string> buffer;
	while (reader->Read()) {
		string table_string;
		MarshalString(reader[0]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[1]->ToString(), table_string);
		buffer.push_front(table_string);
	}
	reader->Close();
	return buffer;
}


list<string> MyConnection::show_employees() {
	SqlCommand^ myCommand = gcnew SqlCommand("view_employees_in_shops", myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	SqlDataReader^ reader = myCommand->ExecuteReader();
	list<string> buffer;
	while (reader->Read()) {
		string table_string;
		MarshalString(reader[0]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[1]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[2]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[3]->ToString(), table_string);
		buffer.push_front(table_string);
	}
	reader->Close();
	return buffer;

}


//Функции для второй формы-------------------------------------------------------------------------------------------------------------------------
//Функции для второй формы-------------------------------------------------------------------------------------------------------------------------
void MyConnection::insert_into_products(String^ name, String^ kollvo, String^ shelflife, String^ price, String^ name_shop) {

}
list<string> MyConnection::view_products() {
	SqlCommand^ myCommand = gcnew SqlCommand("view_products", myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	SqlDataReader^ reader = myCommand->ExecuteReader();
	list<string> buffer;
	while (reader->Read()) {
		string table_string;
		MarshalString(reader[0]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[1]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[2]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[3]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[4]->ToString(), table_string);
		buffer.push_front(table_string);
	}
	reader->Close();
	return buffer;
}
void MyConnection::update_products(String^ name, String^ value, int number_of_ratio) {

}
list<string> MyConnection::delay_control_products(String^ value) {//Должна быть переменная
	SqlCommand^ myCommand = gcnew SqlCommand("delay_control_products", myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	SqlDataReader^ reader = myCommand->ExecuteReader();
	list<string> buffer;
	while (reader->Read()) {
		string table_string;
		MarshalString(reader[0]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[1]->ToString(), table_string);
		buffer.push_front(table_string);
	}
	reader->Close();
	return buffer;

}

//Функции для третьей формы-----------------------------------------------------------------------------------------------------
void MyConnection::insert_into_ingredients(String^ name, String^ kollvo, String^ price) {

}
list<string> MyConnection::view_ingredients() {
	SqlCommand^ myCommand = gcnew SqlCommand("view_igredients", myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	SqlDataReader^ reader = myCommand->ExecuteReader();
	list<string> buffer;
	while (reader->Read()) {
		string table_string;
		MarshalString(reader[0]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[1]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[2]->ToString(), table_string);
		buffer.push_front(table_string);
	}
	reader->Close();
	return buffer;

}
void MyConnection::update_ingredients(String^ name, String^ value, int number_of_ratio) {

}

list<string> MyConnection::control_ingredients(String^ value) {//Переменная обязательно должна быть
	SqlCommand^ myCommand = gcnew SqlCommand("control_ingredients", myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	SqlDataReader^ reader = myCommand->ExecuteReader();
	list<string> buffer;
	while (reader->Read()) {
		string table_string;
		MarshalString(reader[0]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[1]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[2]->ToString(), table_string);
		buffer.push_front(table_string);
	}
	reader->Close();
	return buffer;

}

//Функции для 4-ой формы----------------------------------------------------------------------------------------------
void MyConnection::insert_into_ingreidents_in_products(String^ nameofproduct, String^ nameofingreident) {

}
void MyConnection::delete_ingredients_in_products(String^ nameofproduct, String^ nameofingreident) {

}
list<string> MyConnection::show_composition(String^ nameofproduct, int number_of_ration) {// Может  быть переменная
	SqlCommand^ myCommand = gcnew SqlCommand("show_composition", myconn);
	myCommand->CommandType = CommandType::StoredProcedure;
	SqlDataReader^ reader = myCommand->ExecuteReader();
	list<string> buffer;
	while (reader->Read()) {
		string table_string;
		MarshalString(reader[0]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[1]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[2]->ToString(), table_string);
		buffer.push_front(table_string);
		MarshalString(reader[3]->ToString(), table_string);
		buffer.push_front(table_string);
	}
	reader->Close();
	return buffer;

}