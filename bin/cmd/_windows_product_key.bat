@echo off
rem Require Administrators (?)
rem Windows ���C�Z���X�F�؂ƃv���_�N�g�L�[���m�F����

wmic path softwarelicensingservice get OA3xOriginalProductKey
::powershell -Command "(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey"

::slmgr.vbs /dli

rem === NOTE: Windows ���C�Z���X�`��
rem VL (Volume License) ��ƁA�c�̌���
rem OEM (Original Equipment Manufacturer) �v���C���X�g�[��
rem DSP (Delivery Service Partner) ����p�\�R���Ȃ�
