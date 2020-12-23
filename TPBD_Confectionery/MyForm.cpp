#include "MyForm.h"


using namespace System;
using namespace System::Windows::Forms;
using namespace std;


[STAThread]
void Main()
{
	Application::EnableVisualStyles();
	Application::SetCompatibleTextRenderingDefault(false);

	TPBD_Confectionery::MyForm form;
	Application::Run(%form);
}
