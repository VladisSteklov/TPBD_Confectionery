#pragma once
#include "MyForm2.h"
#include "MyForm3.h"
#include "MyForm4.h"
#include "MyConnection.h"
#include <list>

namespace TPBD_Confectionery {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;
	using namespace System::Data::SqlClient;
	using namespace std;

	/// <summary>
	/// Summary for MyForm
	/// </summary>
	public ref class MyForm : public System::Windows::Forms::Form
	{
	public:
		MyForm(void)
		{
			InitializeComponent();
			//
			//TODO: Add the constructor code here
			//
		}

	protected:
		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		~MyForm()
		{
			if (components)
			{
				delete components;
			}
		}
	private: System::Windows::Forms::Panel^  panel1;
	protected:

	private: System::Windows::Forms::PictureBox^  pictureBox1;
	private: System::Windows::Forms::Button^  button4;
	private: System::Windows::Forms::Button^  button3;
	private: System::Windows::Forms::Button^  button2;
	private: System::Windows::Forms::Label^  label1;
	private: System::Windows::Forms::PictureBox^  pictureBox2;

	private: System::Windows::Forms::TextBox^  textBox6;
	private: System::Windows::Forms::Button^  button6;
	private: System::Windows::Forms::Button^  button7;
	private: System::Windows::Forms::GroupBox^  groupBox2;
	private: System::Windows::Forms::Button^  button11;
	private: System::Windows::Forms::TextBox^  textBox5;
	private: System::Windows::Forms::TextBox^  textBox4;
	private: System::Windows::Forms::TextBox^  textBox3;
	private: System::Windows::Forms::TextBox^  textBox2;
	private: System::Windows::Forms::Label^  label8;
	private: System::Windows::Forms::Label^  label7;
	private: System::Windows::Forms::Label^  label4;
	private: System::Windows::Forms::Label^  label5;
	private: System::Windows::Forms::Button^  button8;
	private: System::Windows::Forms::GroupBox^  groupBox1;
	private: System::Windows::Forms::Button^  button10;


	private: System::Windows::Forms::TextBox^  textBox1;
	private: System::Windows::Forms::Label^  label6;
	private: System::Windows::Forms::Label^  label3;
	private: System::Windows::Forms::Label^  label2;
	private: System::Windows::Forms::Button^  button9;
	private: System::Windows::Forms::Label^  label9;
	private: System::Windows::Forms::DataGridView^  dataGridView1;
	private: System::Windows::Forms::GroupBox^  groupBox3;
	private: System::Windows::Forms::GroupBox^  groupBox4;
	private: System::Windows::Forms::Label^  label13;
	private: System::Windows::Forms::Button^  button1;
	private: System::Windows::Forms::TextBox^  textBox8;
	private: System::Windows::Forms::TextBox^  textBox7;



	private: System::ComponentModel::IContainer^  components;





	private:
		/// <summary>
		/// Required designer variable.
		/// </summary>


#pragma region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		void InitializeComponent(void)
		{
			System::ComponentModel::ComponentResourceManager^  resources = (gcnew System::ComponentModel::ComponentResourceManager(MyForm::typeid));
			this->panel1 = (gcnew System::Windows::Forms::Panel());
			this->button1 = (gcnew System::Windows::Forms::Button());
			this->pictureBox2 = (gcnew System::Windows::Forms::PictureBox());
			this->button4 = (gcnew System::Windows::Forms::Button());
			this->button3 = (gcnew System::Windows::Forms::Button());
			this->button2 = (gcnew System::Windows::Forms::Button());
			this->pictureBox1 = (gcnew System::Windows::Forms::PictureBox());
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->textBox6 = (gcnew System::Windows::Forms::TextBox());
			this->button6 = (gcnew System::Windows::Forms::Button());
			this->button7 = (gcnew System::Windows::Forms::Button());
			this->groupBox2 = (gcnew System::Windows::Forms::GroupBox());
			this->button11 = (gcnew System::Windows::Forms::Button());
			this->textBox5 = (gcnew System::Windows::Forms::TextBox());
			this->textBox4 = (gcnew System::Windows::Forms::TextBox());
			this->textBox3 = (gcnew System::Windows::Forms::TextBox());
			this->textBox2 = (gcnew System::Windows::Forms::TextBox());
			this->label8 = (gcnew System::Windows::Forms::Label());
			this->label7 = (gcnew System::Windows::Forms::Label());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->button8 = (gcnew System::Windows::Forms::Button());
			this->groupBox1 = (gcnew System::Windows::Forms::GroupBox());
			this->textBox8 = (gcnew System::Windows::Forms::TextBox());
			this->textBox7 = (gcnew System::Windows::Forms::TextBox());
			this->button10 = (gcnew System::Windows::Forms::Button());
			this->textBox1 = (gcnew System::Windows::Forms::TextBox());
			this->label6 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->button9 = (gcnew System::Windows::Forms::Button());
			this->label9 = (gcnew System::Windows::Forms::Label());
			this->dataGridView1 = (gcnew System::Windows::Forms::DataGridView());
			this->groupBox3 = (gcnew System::Windows::Forms::GroupBox());
			this->label13 = (gcnew System::Windows::Forms::Label());
			this->groupBox4 = (gcnew System::Windows::Forms::GroupBox());
			this->panel1->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox2))->BeginInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox1))->BeginInit();
			this->groupBox2->SuspendLayout();
			this->groupBox1->SuspendLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView1))->BeginInit();
			this->groupBox3->SuspendLayout();
			this->groupBox4->SuspendLayout();
			this->SuspendLayout();
			// 
			// panel1
			// 
			this->panel1->BackColor = System::Drawing::Color::FromArgb(static_cast<System::Int32>(static_cast<System::Byte>(64)), static_cast<System::Int32>(static_cast<System::Byte>(64)),
				static_cast<System::Int32>(static_cast<System::Byte>(64)));
			this->panel1->Controls->Add(this->button1);
			this->panel1->Controls->Add(this->pictureBox2);
			this->panel1->Controls->Add(this->button4);
			this->panel1->Controls->Add(this->button3);
			this->panel1->Controls->Add(this->button2);
			this->panel1->Dock = System::Windows::Forms::DockStyle::Left;
			this->panel1->Location = System::Drawing::Point(0, 0);
			this->panel1->Name = L"panel1";
			this->panel1->Size = System::Drawing::Size(196, 686);
			this->panel1->TabIndex = 0;
			// 
			// button1
			// 
			this->button1->FlatAppearance->BorderSize = 0;
			this->button1->FlatStyle = System::Windows::Forms::FlatStyle::Flat;
			this->button1->Font = (gcnew System::Drawing::Font(L"Century Gothic", 14.25F, System::Drawing::FontStyle::Italic, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->button1->ForeColor = System::Drawing::Color::White;
			this->button1->ImageAlign = System::Drawing::ContentAlignment::MiddleLeft;
			this->button1->Location = System::Drawing::Point(0, 383);
			this->button1->Name = L"button1";
			this->button1->Size = System::Drawing::Size(196, 65);
			this->button1->TabIndex = 5;
			this->button1->Text = L"Выход";
			this->button1->UseVisualStyleBackColor = true;
			this->button1->Click += gcnew System::EventHandler(this, &MyForm::button1_Click_1);
			// 
			// pictureBox2
			// 
			this->pictureBox2->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox2.Image")));
			this->pictureBox2->Location = System::Drawing::Point(0, 0);
			this->pictureBox2->Name = L"pictureBox2";
			this->pictureBox2->Size = System::Drawing::Size(196, 126);
			this->pictureBox2->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox2->TabIndex = 4;
			this->pictureBox2->TabStop = false;
			// 
			// button4
			// 
			this->button4->FlatAppearance->BorderSize = 0;
			this->button4->FlatStyle = System::Windows::Forms::FlatStyle::Flat;
			this->button4->Font = (gcnew System::Drawing::Font(L"Century Gothic", 14.25F, System::Drawing::FontStyle::Italic, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->button4->ForeColor = System::Drawing::Color::White;
			this->button4->ImageAlign = System::Drawing::ContentAlignment::MiddleLeft;
			this->button4->Location = System::Drawing::Point(3, 231);
			this->button4->Name = L"button4";
			this->button4->Size = System::Drawing::Size(196, 58);
			this->button4->TabIndex = 4;
			this->button4->Text = L"Состав продуктов";
			this->button4->UseVisualStyleBackColor = true;
			this->button4->Click += gcnew System::EventHandler(this, &MyForm::button4_Click);
			// 
			// button3
			// 
			this->button3->FlatAppearance->BorderSize = 0;
			this->button3->FlatStyle = System::Windows::Forms::FlatStyle::Flat;
			this->button3->Font = (gcnew System::Drawing::Font(L"Century Gothic", 14.25F, System::Drawing::FontStyle::Italic, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->button3->ForeColor = System::Drawing::Color::White;
			this->button3->ImageAlign = System::Drawing::ContentAlignment::MiddleLeft;
			this->button3->Location = System::Drawing::Point(0, 307);
			this->button3->Name = L"button3";
			this->button3->Size = System::Drawing::Size(196, 58);
			this->button3->TabIndex = 3;
			this->button3->Text = L"Ингредиенты";
			this->button3->UseVisualStyleBackColor = true;
			this->button3->Click += gcnew System::EventHandler(this, &MyForm::button3_Click);
			// 
			// button2
			// 
			this->button2->FlatAppearance->BorderSize = 0;
			this->button2->FlatStyle = System::Windows::Forms::FlatStyle::Flat;
			this->button2->Font = (gcnew System::Drawing::Font(L"Century Gothic", 14.25F, System::Drawing::FontStyle::Italic, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->button2->ForeColor = System::Drawing::Color::White;
			this->button2->ImageAlign = System::Drawing::ContentAlignment::MiddleLeft;
			this->button2->Location = System::Drawing::Point(0, 152);
			this->button2->Name = L"button2";
			this->button2->Size = System::Drawing::Size(196, 58);
			this->button2->TabIndex = 2;
			this->button2->Text = L"Продукты";
			this->button2->UseVisualStyleBackColor = true;
			this->button2->Click += gcnew System::EventHandler(this, &MyForm::button2_Click);
			// 
			// pictureBox1
			// 
			this->pictureBox1->BackColor = System::Drawing::Color::White;
			this->pictureBox1->BackgroundImage = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox1.BackgroundImage")));
			this->pictureBox1->BackgroundImageLayout = System::Windows::Forms::ImageLayout::None;
			this->pictureBox1->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"pictureBox1.Image")));
			this->pictureBox1->Location = System::Drawing::Point(941, 9);
			this->pictureBox1->Name = L"pictureBox1";
			this->pictureBox1->Size = System::Drawing::Size(227, 101);
			this->pictureBox1->SizeMode = System::Windows::Forms::PictureBoxSizeMode::StretchImage;
			this->pictureBox1->TabIndex = 1;
			this->pictureBox1->TabStop = false;
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Font = (gcnew System::Drawing::Font(L"Century Gothic", 14.25F, static_cast<System::Drawing::FontStyle>((System::Drawing::FontStyle::Bold | System::Drawing::FontStyle::Italic)),
				System::Drawing::GraphicsUnit::Point, static_cast<System::Byte>(204)));
			this->label1->Location = System::Drawing::Point(242, 9);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(623, 23);
			this->label1->TabIndex = 2;
			this->label1->Text = L"Клиент-серверное приложение для компании ОАО \"Комильфо\"";
			// 
			// textBox6
			// 
			this->textBox6->BackColor = System::Drawing::Color::White;
			this->textBox6->Location = System::Drawing::Point(24, 44);
			this->textBox6->Name = L"textBox6";
			this->textBox6->Size = System::Drawing::Size(113, 23);
			this->textBox6->TabIndex = 23;
			// 
			// button6
			// 
			this->button6->BackColor = System::Drawing::Color::Silver;
			this->button6->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, static_cast<System::Drawing::FontStyle>((System::Drawing::FontStyle::Bold | System::Drawing::FontStyle::Italic)),
				System::Drawing::GraphicsUnit::Point, static_cast<System::Byte>(204)));
			this->button6->Location = System::Drawing::Point(12, 81);
			this->button6->Name = L"button6";
			this->button6->Size = System::Drawing::Size(215, 26);
			this->button6->TabIndex = 22;
			this->button6->Text = L"Вычислить";
			this->button6->UseVisualStyleBackColor = false;
			this->button6->Click += gcnew System::EventHandler(this, &MyForm::button6_Click);
			// 
			// button7
			// 
			this->button7->BackColor = System::Drawing::Color::Silver;
			this->button7->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, System::Drawing::FontStyle::Italic, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->button7->Location = System::Drawing::Point(542, 247);
			this->button7->Name = L"button7";
			this->button7->Size = System::Drawing::Size(215, 30);
			this->button7->TabIndex = 21;
			this->button7->Text = L"Вывести список сотрудников";
			this->button7->UseVisualStyleBackColor = false;
			this->button7->Click += gcnew System::EventHandler(this, &MyForm::button7_Click);
			// 
			// groupBox2
			// 
			this->groupBox2->BackColor = System::Drawing::Color::Silver;
			this->groupBox2->Controls->Add(this->button11);
			this->groupBox2->Controls->Add(this->textBox5);
			this->groupBox2->Controls->Add(this->textBox4);
			this->groupBox2->Controls->Add(this->textBox3);
			this->groupBox2->Controls->Add(this->textBox2);
			this->groupBox2->Controls->Add(this->label8);
			this->groupBox2->Controls->Add(this->label7);
			this->groupBox2->Controls->Add(this->label4);
			this->groupBox2->Controls->Add(this->label5);
			this->groupBox2->Font = (gcnew System::Drawing::Font(L"Century Gothic", 11.25F, static_cast<System::Drawing::FontStyle>((System::Drawing::FontStyle::Bold | System::Drawing::FontStyle::Italic)),
				System::Drawing::GraphicsUnit::Point, static_cast<System::Byte>(204)));
			this->groupBox2->Location = System::Drawing::Point(542, 67);
			this->groupBox2->Name = L"groupBox2";
			this->groupBox2->Size = System::Drawing::Size(381, 174);
			this->groupBox2->TabIndex = 20;
			this->groupBox2->TabStop = false;
			this->groupBox2->Text = L"Добавить нового сотрудника";
			// 
			// button11
			// 
			this->button11->Location = System::Drawing::Point(139, 142);
			this->button11->Name = L"button11";
			this->button11->Size = System::Drawing::Size(137, 28);
			this->button11->TabIndex = 10;
			this->button11->Text = L"Добавить";
			this->button11->UseVisualStyleBackColor = true;
			this->button11->Click += gcnew System::EventHandler(this, &MyForm::button11_Click);
			// 
			// textBox5
			// 
			this->textBox5->Location = System::Drawing::Point(223, 61);
			this->textBox5->Name = L"textBox5";
			this->textBox5->Size = System::Drawing::Size(137, 26);
			this->textBox5->TabIndex = 9;
			// 
			// textBox4
			// 
			this->textBox4->Location = System::Drawing::Point(91, 98);
			this->textBox4->Name = L"textBox4";
			this->textBox4->Size = System::Drawing::Size(116, 26);
			this->textBox4->TabIndex = 8;
			// 
			// textBox3
			// 
			this->textBox3->Location = System::Drawing::Point(91, 61);
			this->textBox3->Name = L"textBox3";
			this->textBox3->Size = System::Drawing::Size(116, 26);
			this->textBox3->TabIndex = 7;
			// 
			// textBox2
			// 
			this->textBox2->Location = System::Drawing::Point(91, 28);
			this->textBox2->Name = L"textBox2";
			this->textBox2->Size = System::Drawing::Size(116, 26);
			this->textBox2->TabIndex = 6;
			// 
			// label8
			// 
			this->label8->AutoSize = true;
			this->label8->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, System::Drawing::FontStyle::Italic));
			this->label8->Location = System::Drawing::Point(6, 108);
			this->label8->Name = L"label8";
			this->label8->Size = System::Drawing::Size(66, 16);
			this->label8->TabIndex = 5;
			this->label8->Text = L"Отчество";
			// 
			// label7
			// 
			this->label7->AutoSize = true;
			this->label7->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, System::Drawing::FontStyle::Italic));
			this->label7->Location = System::Drawing::Point(220, 33);
			this->label7->Name = L"label7";
			this->label7->Size = System::Drawing::Size(140, 16);
			this->label7->TabIndex = 4;
			this->label7->Text = L"Название магазина";
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, System::Drawing::FontStyle::Italic));
			this->label4->Location = System::Drawing::Point(13, 28);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(68, 16);
			this->label4->TabIndex = 2;
			this->label4->Text = L"Фамилия";
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, System::Drawing::FontStyle::Italic));
			this->label5->Location = System::Drawing::Point(15, 66);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(34, 16);
			this->label5->TabIndex = 3;
			this->label5->Text = L"Имя";
			// 
			// button8
			// 
			this->button8->BackColor = System::Drawing::Color::Silver;
			this->button8->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, System::Drawing::FontStyle::Italic));
			this->button8->Location = System::Drawing::Point(211, 283);
			this->button8->Name = L"button8";
			this->button8->Size = System::Drawing::Size(273, 27);
			this->button8->TabIndex = 19;
			this->button8->Text = L"Найти самый прибыльный магазин";
			this->button8->UseVisualStyleBackColor = false;
			this->button8->Click += gcnew System::EventHandler(this, &MyForm::button8_Click);
			// 
			// groupBox1
			// 
			this->groupBox1->BackColor = System::Drawing::Color::Silver;
			this->groupBox1->Controls->Add(this->textBox8);
			this->groupBox1->Controls->Add(this->textBox7);
			this->groupBox1->Controls->Add(this->button10);
			this->groupBox1->Controls->Add(this->textBox1);
			this->groupBox1->Controls->Add(this->label6);
			this->groupBox1->Controls->Add(this->label3);
			this->groupBox1->Controls->Add(this->label2);
			this->groupBox1->Font = (gcnew System::Drawing::Font(L"Century Gothic", 11.25F, static_cast<System::Drawing::FontStyle>((System::Drawing::FontStyle::Bold | System::Drawing::FontStyle::Italic)),
				System::Drawing::GraphicsUnit::Point, static_cast<System::Byte>(204)));
			this->groupBox1->Location = System::Drawing::Point(211, 67);
			this->groupBox1->Name = L"groupBox1";
			this->groupBox1->Size = System::Drawing::Size(304, 174);
			this->groupBox1->TabIndex = 18;
			this->groupBox1->TabStop = false;
			this->groupBox1->Text = L"Добавить новый магазин";
			// 
			// textBox8
			// 
			this->textBox8->Location = System::Drawing::Point(169, 102);
			this->textBox8->Name = L"textBox8";
			this->textBox8->Size = System::Drawing::Size(116, 26);
			this->textBox8->TabIndex = 8;
			// 
			// textBox7
			// 
			this->textBox7->Location = System::Drawing::Point(169, 66);
			this->textBox7->Name = L"textBox7";
			this->textBox7->Size = System::Drawing::Size(116, 26);
			this->textBox7->TabIndex = 7;
			// 
			// button10
			// 
			this->button10->Location = System::Drawing::Point(93, 142);
			this->button10->Name = L"button10";
			this->button10->Size = System::Drawing::Size(122, 26);
			this->button10->TabIndex = 6;
			this->button10->Text = L"Добавить";
			this->button10->UseVisualStyleBackColor = true;
			this->button10->Click += gcnew System::EventHandler(this, &MyForm::button10_Click);
			// 
			// textBox1
			// 
			this->textBox1->Location = System::Drawing::Point(169, 25);
			this->textBox1->Name = L"textBox1";
			this->textBox1->Size = System::Drawing::Size(116, 26);
			this->textBox1->TabIndex = 3;
			// 
			// label6
			// 
			this->label6->AutoSize = true;
			this->label6->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, System::Drawing::FontStyle::Italic, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label6->Location = System::Drawing::Point(6, 108);
			this->label6->Name = L"label6";
			this->label6->Size = System::Drawing::Size(56, 16);
			this->label6->TabIndex = 2;
			this->label6->Text = L"Расход";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, System::Drawing::FontStyle::Italic, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label3->Location = System::Drawing::Point(6, 66);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(49, 16);
			this->label3->TabIndex = 1;
			this->label3->Text = L"Доход";
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, System::Drawing::FontStyle::Italic, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label2->Location = System::Drawing::Point(6, 30);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(140, 16);
			this->label2->TabIndex = 0;
			this->label2->Text = L"Название магазина";
			// 
			// button9
			// 
			this->button9->BackColor = System::Drawing::Color::Silver;
			this->button9->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, System::Drawing::FontStyle::Italic, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->button9->Location = System::Drawing::Point(211, 247);
			this->button9->Name = L"button9";
			this->button9->Size = System::Drawing::Size(215, 30);
			this->button9->TabIndex = 17;
			this->button9->Text = L"Вывести список магазинов";
			this->button9->UseVisualStyleBackColor = false;
			this->button9->Click += gcnew System::EventHandler(this, &MyForm::button9_Click);
			// 
			// label9
			// 
			this->label9->AutoSize = true;
			this->label9->Font = (gcnew System::Drawing::Font(L"Century Schoolbook", 11.25F, static_cast<System::Drawing::FontStyle>((System::Drawing::FontStyle::Bold | System::Drawing::FontStyle::Italic)),
				System::Drawing::GraphicsUnit::Point, static_cast<System::Byte>(204)));
			this->label9->Location = System::Drawing::Point(337, 35);
			this->label9->Name = L"label9";
			this->label9->Size = System::Drawing::Size(397, 19);
			this->label9->TabIndex = 16;
			this->label9->Text = L"Меню управления магазинами и сотрудниками";
			// 
			// dataGridView1
			// 
			this->dataGridView1->BackgroundColor = System::Drawing::Color::White;
			this->dataGridView1->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->dataGridView1->Location = System::Drawing::Point(40, 30);
			this->dataGridView1->Name = L"dataGridView1";
			this->dataGridView1->Size = System::Drawing::Size(842, 323);
			this->dataGridView1->TabIndex = 24;
			// 
			// groupBox3
			// 
			this->groupBox3->BackColor = System::Drawing::Color::Silver;
			this->groupBox3->Controls->Add(this->label13);
			this->groupBox3->Controls->Add(this->button6);
			this->groupBox3->Controls->Add(this->textBox6);
			this->groupBox3->Font = (gcnew System::Drawing::Font(L"Century Gothic", 9.75F, static_cast<System::Drawing::FontStyle>((System::Drawing::FontStyle::Bold | System::Drawing::FontStyle::Italic)),
				System::Drawing::GraphicsUnit::Point, static_cast<System::Byte>(204)));
			this->groupBox3->Location = System::Drawing::Point(941, 128);
			this->groupBox3->Name = L"groupBox3";
			this->groupBox3->Size = System::Drawing::Size(249, 113);
			this->groupBox3->TabIndex = 25;
			this->groupBox3->TabStop = false;
			this->groupBox3->Text = L"Вычислить прибыль для магазина";
			// 
			// label13
			// 
			this->label13->AutoSize = true;
			this->label13->Font = (gcnew System::Drawing::Font(L"Century Schoolbook", 9, System::Drawing::FontStyle::Italic, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->label13->Location = System::Drawing::Point(81, 24);
			this->label13->Name = L"label13";
			this->label13->Size = System::Drawing::Size(160, 15);
			this->label13->TabIndex = 24;
			this->label13->Text = L"Укажите название магаз.";
			// 
			// groupBox4
			// 
			this->groupBox4->BackColor = System::Drawing::Color::Silver;
			this->groupBox4->Controls->Add(this->dataGridView1);
			this->groupBox4->Font = (gcnew System::Drawing::Font(L"Century Gothic", 14.25F, static_cast<System::Drawing::FontStyle>((System::Drawing::FontStyle::Bold | System::Drawing::FontStyle::Italic)),
				System::Drawing::GraphicsUnit::Point, static_cast<System::Byte>(204)));
			this->groupBox4->Location = System::Drawing::Point(220, 321);
			this->groupBox4->Name = L"groupBox4";
			this->groupBox4->Size = System::Drawing::Size(948, 353);
			this->groupBox4->TabIndex = 26;
			this->groupBox4->TabStop = false;
			this->groupBox4->Text = L"Журнал";
			// 
			// MyForm
			// 
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::None;
			this->BackColor = System::Drawing::Color::White;
			this->ClientSize = System::Drawing::Size(1202, 686);
			this->Controls->Add(this->groupBox4);
			this->Controls->Add(this->groupBox3);
			this->Controls->Add(this->button7);
			this->Controls->Add(this->groupBox2);
			this->Controls->Add(this->button8);
			this->Controls->Add(this->groupBox1);
			this->Controls->Add(this->button9);
			this->Controls->Add(this->label9);
			this->Controls->Add(this->label1);
			this->Controls->Add(this->pictureBox1);
			this->Controls->Add(this->panel1);
			this->FormBorderStyle = System::Windows::Forms::FormBorderStyle::FixedToolWindow;
			this->Name = L"MyForm";
			this->StartPosition = System::Windows::Forms::FormStartPosition::CenterParent;
			this->Text = L"Кондитерский Магазин";
			this->panel1->ResumeLayout(false);
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox2))->EndInit();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->pictureBox1))->EndInit();
			this->groupBox2->ResumeLayout(false);
			this->groupBox2->PerformLayout();
			this->groupBox1->ResumeLayout(false);
			this->groupBox1->PerformLayout();
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView1))->EndInit();
			this->groupBox3->ResumeLayout(false);
			this->groupBox3->PerformLayout();
			this->groupBox4->ResumeLayout(false);
			this->ResumeLayout(false);
			this->PerformLayout();

		}
		//msclr::interop::marshal_as<System::String^>(surname);
#pragma endregion

	private:void addTo_DataGridView (list<string> buffer,int count_stolbec,bool flag) {// Добавление в форму таблицы
		 string value_string; String^ value_String;
		 if (!buffer.empty()) {
			 buffer.reverse();
			 if (count_stolbec == 2) {
				 dataGridView1->ColumnCount = 2;
				 dataGridView1->RowCount = buffer.size() / count_stolbec;
				 dataGridView1->Columns[0]->HeaderCell->Value = "Такой сотрудник уже есть";
				 dataGridView1->Columns[1]->HeaderCell->Value = "Кондитерская";
				 dataGridView1->TopLeftHeaderCell->Value = "Номер";
				 int j = 0, i = 0;
				 while (!buffer.empty()) {
					 dataGridView1->Rows[j]->HeaderCell->Value = Convert::ToString(j + 1);
					 value_string = buffer.front(); buffer.pop_front(); value_String = msclr::interop::marshal_as<System::String^>(value_string);
					 dataGridView1->Rows[i]->Cells[0]->Value = value_String;
					 value_string = buffer.front(); buffer.pop_front(); value_String = msclr::interop::marshal_as<System::String^>(value_string);
					 dataGridView1->Rows[i]->Cells[1]->Value = value_String;
					 i++; j++;

				 }
			 }
			 if (count_stolbec == 3) {
				 dataGridView1->ColumnCount = 3;
				 dataGridView1->RowCount = buffer.size() / count_stolbec;
				 dataGridView1->Columns[0]->HeaderCell->Value = "Кондитерская";
				 dataGridView1->Columns[1]->HeaderCell->Value = "Выручка";
				 dataGridView1->Columns[2]->HeaderCell->Value = "Расходы";
				 dataGridView1->TopLeftHeaderCell->Value = "Номер";
				 int j = 0, i = 0;
				 while (!buffer.empty()) {
					 dataGridView1->Rows[j]->HeaderCell->Value = Convert::ToString(j + 1);
					 value_string = buffer.front(); buffer.pop_front(); value_String = msclr::interop::marshal_as<System::String^>(value_string);
					 dataGridView1->Rows[i]->Cells[0]->Value = value_String;
					 value_string = buffer.front(); buffer.pop_front(); value_String = msclr::interop::marshal_as<System::String^>(value_string);
					 dataGridView1->Rows[i]->Cells[1]->Value = value_String;
					 value_string = buffer.front(); buffer.pop_front();  value_String = msclr::interop::marshal_as<System::String^>(value_string);
					 dataGridView1->Rows[i]->Cells[2]->Value = value_String;
					 i++; j++;
				 }
			 }
			 if(count_stolbec==4) {
				 dataGridView1->ColumnCount = 4;
				 dataGridView1->RowCount = buffer.size() / count_stolbec;

				 if (flag == true) {
					 dataGridView1->Columns[0]->HeaderCell->Value = "Фамилия";
					 dataGridView1->Columns[1]->HeaderCell->Value = "Имя";
					 dataGridView1->Columns[2]->HeaderCell->Value = "Отчество";
					 dataGridView1->Columns[3]->HeaderCell->Value = "Кондитерская";
					 dataGridView1->TopLeftHeaderCell->Value = "Номер";

				 }
				 if (flag == false) {
					 dataGridView1->Columns[0]->HeaderCell->Value = "Кондитерская с наибольшей прибылью";
					 dataGridView1->Columns[1]->HeaderCell->Value = "Выручка";
					 dataGridView1->Columns[2]->HeaderCell->Value = "Расходы";
					 dataGridView1->Columns[3]->HeaderCell->Value = "Чистая прибыль";
					 dataGridView1->TopLeftHeaderCell->Value = "Номер";
				 }
				 int j = 0, i = 0;
				 while (!buffer.empty()) {
					 dataGridView1->Rows[j]->HeaderCell->Value = Convert::ToString(j + 1);
					 value_string = buffer.front(); buffer.pop_front(); value_String = msclr::interop::marshal_as<System::String^>(value_string);
					 dataGridView1->Rows[i]->Cells[0]->Value = value_String;
					 value_string = buffer.front(); buffer.pop_front(); value_String = msclr::interop::marshal_as<System::String^>(value_string);
					 dataGridView1->Rows[i]->Cells[1]->Value = value_String;
					 value_string = buffer.front(); buffer.pop_front();  value_String = msclr::interop::marshal_as<System::String^>(value_string);
					 dataGridView1->Rows[i]->Cells[2]->Value = value_String;
					 value_string = buffer.front(); buffer.pop_front();  value_String = msclr::interop::marshal_as<System::String^>(value_string);
					 dataGridView1->Rows[i]->Cells[3]->Value = value_String;
					 i++; j++;
				 }
			 }
			 dataGridView1->AutoResizeRowHeadersWidth(DataGridViewRowHeadersWidthSizeMode::AutoSizeToAllHeaders);
			 dataGridView1->AutoResizeColumns();
		 }
		return;
	}
	private: System::Void bindingSource1_CurrentChanged(System::Object^  sender, System::EventArgs^  e) {
	}
	private: System::Void bindingSource1_CurrentChanged_1(System::Object^  sender, System::EventArgs^  e) {
	}
	private: System::Void button1_Click(System::Object^  sender, System::EventArgs^  e) {
	}


 //-----------------------------------------------------------------------------------------------------------------------------------
	private: System::Void button2_Click(System::Object^  sender, System::EventArgs^  e) {//Кнопка "Продукты"

		MyForm2^ Products_form=gcnew(MyForm2);
		Products_form->Show();
	
	}
	private: System::Void button4_Click(System::Object^  sender, System::EventArgs^  e) {//Кнопка "Состав Продукта"

		MyForm4^ Ingredients_in_Products_from=gcnew(MyForm4);
		Ingredients_in_Products_from->Show();
	}
	private: System::Void button3_Click(System::Object^  sender, System::EventArgs^  e) {// Кнопка "Ингредиенты"

		MyForm3^ Ingredients_forms=gcnew(MyForm3);
		Ingredients_forms->Show();
	} 
	private: System::Void button1_Click_1(System::Object^  sender, System::EventArgs^  e) {//Выход
		Application::Exit();
	}
//-----------------------------------------------------------------------------------------------------------------------------------
	private: System::Void button10_Click(System::Object^  sender, System::EventArgs^  e) {//Добавить магазин
		
		if (Convert::ToString(textBox1->Text) == "" || Convert::ToString(textBox7->Text) == "" || Convert::ToString(textBox8->Text) == "") {
			MessageBox::Show("Данные не введены!\nПроверьте вводимые данные.", "Ошибка ввода данных в БД.");
			return;
		}
		if (isChislo(Convert::ToString(textBox7->Text)) == false || isChislo(Convert::ToString(textBox8->Text)) == false) {
			MessageBox::Show("Доход или расход не являются числами.", "Ошибка ввода данных в БД.");
			return;
		}

		String ^name = Convert::ToString(textBox1->Text);
		Decimal profit = Convert::ToDecimal(textBox7->Text);
		Decimal costs = Convert::ToDecimal(textBox8->Text);
		MyConnection^ Connection = gcnew MyConnection();
		Connection->insert_into_shops(name, profit, costs);
	
		MessageBox::Show("Добавление успешно завершено.", "Информация.");
		delete Connection;
		textBox1->Clear(); textBox7->Clear(); textBox8->Clear();
	}

	

	private: System::Void button11_Click(System::Object^  sender, System::EventArgs^  e) {//Добавить сотрудника 

		if (Convert::ToString(textBox2->Text) == "" || Convert::ToString(textBox3->Text) == "" || Convert::ToString(textBox4->Text) == ""||
			Convert::ToString(textBox5->Text)=="") {
			MessageBox::Show("Данные не введены!\nПроверьте вводимые данные.", "Ошибка ввода данных в БД.");
			return;
		}
		String ^firstname = Convert::ToString(textBox2->Text);
		String ^lastname = Convert::ToString(textBox3->Text);
		String ^middlename = Convert::ToString(textBox4->Text);
		String ^nameshop = Convert::ToString(textBox5->Text);
		MyConnection^ Connection = gcnew MyConnection();
		list<string> buffer = Connection->insert_into_employees(firstname, lastname, middlename, nameshop);
		MessageBox::Show("Добавление успешно завершено.", "Информация.");
		addTo_DataGridView(buffer, 2, false);
		textBox2->Clear(); textBox3->Clear(); textBox4->Clear(); textBox5->Clear();
		delete Connection;
	}

	private: System::Void button6_Click(System::Object^  sender, System::EventArgs^  e) {//Вычилить прибыль для магазина
		if (Convert::ToString(textBox6->Text) == "") {
			MessageBox::Show("Введите название магазина, для которого необходимо найти прибыль.", "Ошибка ввода данных в БД.");
			return;
		}
			String^ name = Convert::ToString(textBox6->Text);
			MyConnection^ Connection = gcnew MyConnection();
			Connection->update_profit_shops(name);
			MessageBox::Show("Прибыль для магазина вычислена.", "Информация.");
			textBox6->Clear();
			delete Connection;
		

	}

	private: System::Void button9_Click(System::Object^  sender, System::EventArgs^  e) {//Вывести список магазинов
		
		MyConnection^ Connection = gcnew MyConnection();
		list<string> buffer = Connection->viewm_show_shops();
		addTo_DataGridView(buffer, 3,true);
		delete Connection;
	}
	private: System::Void button7_Click(System::Object^  sender, System::EventArgs^  e) {//Вывести список сотрудников
		MyConnection^ Connection = gcnew MyConnection();
		list<string> buffer = Connection->show_employees();
		bool value = false;
		addTo_DataGridView(buffer,4,true);
		delete Connection;
	}		
	private: System::Void button8_Click(System::Object^  sender, System::EventArgs^  e) {//Найти самый прибыльный магазин
		MyConnection^ Connection = gcnew MyConnection();
		list<string> buffer = Connection->get_hight_shop();
		bool value = false;
		addTo_DataGridView(buffer,4,false);
		delete Connection;
	}
};
}
