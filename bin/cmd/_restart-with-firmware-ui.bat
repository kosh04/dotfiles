@echo off
rem �p�\�R�����ċN����BIOS(UEFI)��ʂɓ���
rem ���ӁF�p�\�R���ɂ���Ă̓T�|�[�g����Ă��Ȃ��ꍇ����

if "%*"=="/?" (
   type %0
   exit /b
)

rem /r   �V���b�g �_�E���̌�ɃR���s���[�^�[���ċN�����܂��B
rem /fw  ���̍ċN�����Ƀt�@�[���E�F�A ���[�U�[ �C���^�[�t�F�C�X���\������܂��B
echo Shutdown /r /fw %*
