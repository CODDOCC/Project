#pragma once
#include "func.h"
#include "form.h"
#include <Windows.h>


int sum(int a, int b)
{
	int sun;
	return sun = a + b;
}
using namespace System;
using namespace System::Windows::Forms;

void Main(array<String^>^args)
{
	Application::EnableVisualStyles();
	Application::SetCompatibleTextRenderingDefault(false);
	lab::form form;
	Application::Run(%form);
}