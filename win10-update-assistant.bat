@echo off
title WIN10�������� - Lovingly Made By [��Ԫ] :-D
mode con cols=71 lines=14
color 5f

echo ����������������������������������������������������������������������
echo ��                                                                  ��
echo ��              ��� Windows10ϵͳ�Զ����¹����� ���             ��
echo ��                                                                  ��
echo ��                     �����˳�360�Ȱ�ȫ�ܼң�                      ��
echo ��             ��ȷ���Ҽ�ѡ��"�Թ���Ա�������"�˽ű���             ��
echo ��                                                                  ��
echo ��                           ���ߡ���Ԫ��                           ��
echo ��  �����뷴����https://www.cnblogs.com/iyangyuan/p/10555073.html�� ��
echo ��                                                                  ��
echo ��                           �����������                           ��
echo ��                                                                  ��
echo ����������������������������������������������������������������������
pause > nul

set wuaueng=C:\Windows\System32\wuaueng.dll

:menu
cls
echo.
echo.
echo --[1]--����Windows10ϵͳ����
echo --[2]--�ָ�Windows10ϵͳ����
echo --[3]--�˳�����
echo.
echo.
echo.
echo --ע��--���γɹ����벻Ҫɾ�������򣡷����޷��ָ������� x_x
echo.
echo.
echo.
choice /c 123 /n /m "��ѡ��1-3����"

echo %errorlevel%
if %errorlevel% == 1 goto disable
if %errorlevel% == 2 goto enable
if %errorlevel% == 3 goto end
else (goto menu)

:disable
takeown /f %wuaueng%
icacls %wuaueng% /grant "%USERDOMAIN%\%USERNAME%":(F)
copy %wuaueng% %~dp0duplicate
break>%wuaueng%

cls
echo.
echo.
echo ����������������������������������������������������������������������
echo ��                                                                  ��
echo ��    �ɹ�����Windows10ϵͳ���£�������Ҳ���õ��ĵ����Զ�������~    ��
echo ��                                                                  ��
echo ��      ���ٴ�֣�����ѡ������벻Ҫɾ�������򣬷����޷��ָ�����      ��
echo ��                                                                  ��
echo ��                         ��������˳�����                         ��
echo ��                                                                  ��
echo ����������������������������������������������������������������������
echo.
echo.
pause > nul
exit

:enable
if not exist %~dp0duplicate goto noduplicate
takeown /f %wuaueng%
icacls %wuaueng% /grant "%USERDOMAIN%\%USERNAME%":(F)
del /f /q %wuaueng%
copy %~dp0duplicate %wuaueng%

cls
echo.
echo.
echo.
echo ����������������������������������������������������������������������
echo ��                                                                  ��
echo ��         �ɹ��ָ�Windows10ϵͳ���£��Ͽ�ȥ�������ϵͳ��~         ��
echo ��                                                                  ��
echo ��                         ��������˳�����                         ��
echo ��                                                                  ��
echo ����������������������������������������������������������������������
echo.
echo.
echo.
pause > nul
exit

:noduplicate
cls
echo.
echo.
echo.
echo ����������������������������������������������������������������������
echo ��                                                                  ��
echo ��                          ��� ���� ���                          ��
echo ��                                                                  ��
echo ��        �����⵽����δ���ι�Windows10ϵͳ���£�����ָ���       ��
echo ��                                                                  ��
echo ��                         ��������˳�����                         ��
echo ��                                                                  ��
echo ����������������������������������������������������������������������
echo.
echo.
pause > nul
exit

:end
exit


