
#include <iostream>
#include <string.h>
#include "WzSerialPort.h"

#include <unistd.h> 

using namespace std;

void sendDemo()
{
	WzSerialPort w;
	if (w.open("/dev/ttyS5", 115200, 0, 8, 1))
	{
		cout << "open serial port success..." << endl;
		for (int i = 0;i < 10;i++)
		{
			w.send("helloworld", 10);
		}
		cout << "send demo finished..."<<endl;
		w.close();
	}
	else
	{
		cout << "open serial port failed..." << endl;
	}
}

void receiveDemo()
{
	WzSerialPort w;
	if (w.open("/dev/ttyS7", 115200, 0, 8, 1))
	{
		cout << "open serial port success..." << endl;
		
		char buf[1024];
		while (true)
		{
			w.send("helloworld", 10);
			cout << "send helloworld" << endl;
			usleep(5 * 1000);
			
			memset(buf, 0,1024);
			w.receive(buf, 1024);
			cout << "recv " << buf << endl;

			cout << "sleep 1s" << endl;
			sleep(1);
			
		}
	}
	else
	{
		cout << "open serial port failed..." << endl;
	}
}

int main(int argumentCount, const char* argumentValues[]) 
{
	// 假设 /dev/ttyS1 已经和另外一个串口连接好了

	// 发送 demo
	//sendDemo();

	// 接收 demo
	receiveDemo();

	return 0;
} 
