#include <stdio.h>
#include <stdlib.h>

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>
#include <shellapi.h>
#include <strsafe.h>
#include <Commctrl.h>

#define NOTIFICATIONS_API __declspec(dllexport)

HWND hwnd;
HINSTANCE instance;
FILE *fp;

NOTIFICATIONS_API long testDLL(const char* text, const char* label)
{
   return 13;
}

NOTIFICATIONS_API void DisplayNotification(const char* text, const char* label)
{
   MessageBoxA(NULL, text, label, 0);
   hwnd = CreateWindowA("STATIC","dummy",WS_VISIBLE,0,0,100,100,NULL,NULL,NULL,NULL);
   fp = fopen ("D://file.txt", "w");
   fprintf(fp, "Label: %s, Notification: %s", label, text);
   
   fclose(fp);


    
    DestroyWindow(hwnd);
    //NOTIFYICONDATA nid;
    //nid.cbSize = sizeof(nid);
    //nid.hWnd = hwnd;
    //// http://msdn.microsoft.com/en-us/library/windows/desktop/bb773352(v=vs.85).aspx
    //// NIF_TIP to use szTip(max 128 chars), NIF_INFO to use szInfo(max 200 for localization, actually 256)
    //nid.uFlags = NIF_TIP | NIF_GUID;
    //
    //MultiByteToWideChar(0, 0, text, strlen(text), nid.szInfo, 256);
    //MultiByteToWideChar(0, 0, label, strlen(label), nid.szInfoTitle, 64);
    //MultiByteToWideChar(0, 0, "szTip", 5, nid.szTip, 64);
    //nid.hIcon = (HICON)LoadImage(NULL, L"D:/icon.ico",IMAGE_ICON,0,0,LR_LOADFROMFILE);
    //
    //Shell_NotifyIcon(NIM_ADD, &nid) ;
    //
    //Shell_NotifyIcon(NIM_SETVERSION, &nid);
    //
    //Sleep(5000);
    //Shell_NotifyIcon(NIM_DELETE, &nid) ;
    //
    //
    //Shell_NotifyIcon(NIM_ADD, &nid);
}

/*int WINAPI wWinMain( HINSTANCE hInstance, HINSTANCE hPrevInstance, LPWSTR lpCmdLine, int nCmdShow )
{
    UNREFERENCED_PARAMETER( hPrevInstance );
    UNREFERENCED_PARAMETER( lpCmdLine );

    instance = hInstance;

    hwnd = CreateWindowA("STATIC","dummy",WS_VISIBLE,0,0,100,100,NULL,NULL,NULL,NULL);
    DisplayNotification("Hey", "Mrrrr");
    
    DestroyWindow(hwnd);
    return 0;
}*/
