script_name("Konoha")
script_description("/konoha - ������")
script_version("1.0")
script_author("Soap_Mctavish")
script_dependencies("SAMPFUNCS, SAMP")
require("lib.moonloader")
require("lib.sampfuncs")

vstart = 1


function main()
  while not isSampAvailable() do
    wait(1000)
  end
  if vstart == 1 then
  	sampAddChatMessage("{ffffff}*[{FF1493}Konohagakure{ffffff}]: ������ - /konoha", 0xC1C1C1)
  end

  sampRegisterChatCommand("konoha", konoha) -- ��� ��� ������� ����� ������������� � �������, ��������� - ������
  sampRegisterChatCommand("ustav", ustav) -- ��� ��� ������� ����� ������������� � �������, ��������� - ������
  sampRegisterChatCommand("udost", udost) -- ��� ��� ������� ����� ������������� � �������, ��������� - ������
  sampRegisterChatCommand("headband", headband)
  sampRegisterChatCommand("ring", ring)
  sampRegisterChatCommand("bon", bon)
  sampRegisterChatCommand("hclose", hclose)
  sampRegisterChatCommand("hopen", hopen)
  while true do wait(0)

  end
end

function konoha()
  local konoha = [[
  {FF1493}__________________________________________________________________________________________________________

{FF1493}*{ffffff}����� ������� - {FF1493}/ustav
{FF1493}*{ffffff}������� �������- {FF1493}/headband
{FF1493}*{ffffff}������������� ������� - {FF1493}/udost
{FF1493}*{ffffff}������ �������(������ �������) - {FF1493}/ring
{FF1493}*{ffffff}���������� ������ - {FF1493}/bon
{FF1493}*{ffffff}������� ����� ���� - {FF1493}/hclose
{FF1493}*{ffffff}������� ����� ���� - {FF1493}/hopen

   {FF1493}__________________________________________________________________________________________________________
]]
  sampShowDialog(1010, "{ffffff} ������� �������", konoha, "{ffffff}�������", "", 0)
end

function ustav()
  local ustav = [[
  {ffffff}__________________________________________________________________________________________________________

{ff0000}[ Konoha ]{ffffff}
Konohagakure - �������, ���������� �� ��������� ���������� � ������� ��������, ���������� ��������� � ���� �������.

{ff0000}[ �������� �� ������� ]
{1E2BE8}[ * ]{ffffff} ������ ��������� �� ���������� ������ ����� ��������� ������� ������
{1E2BE8}[ * ]{ffffff} ������ � ������������ ���������� ����� ���� ������� �� ������ ����

{ff0000}[ ���������� ]
{1E2BE8}[ * ]{ffffff} ���������� ��������� ���� ���������, �� �� �����������, � ���, ������� ����� ���� ������
{1E2BE8}[ * ]{ffffff} ���� ����� ���������, ��� ����� ������� �����, ����� �� ��������� ����������

{ff0000}[ ������������ ]
{1E2BE8}[ * ]{ffffff} ����� ����������� ���������
{1E2BE8}[ * ]{ffffff} ���� �������� ���������� ������ �� ����� ������, ����� �������� 3.1
{1E2BE8}[ * ]{ffffff} ����� ����� ������������ �� ����, ���� �� ��� �������� ��� ������, �� ������ ���������

{ff0000}[ ����������� ������ ������� ]
{1E2BE8}[ * ]{ffffff} ����������� �������� ������� (6-8 ����� ��������� � ������)
{1E2BE8}[ * ]{ffffff} ������ ������������� ����� �� ����������� (/lime)
{1E2BE8}[ * ]{ffffff} ��������� �� ���������� �������
{1E2BE8}[ * ]{ffffff} �������������� �� ��������

{ff0000}[ ������ ������� ��������� ]
{1E2BE8}[ * ]{ffffff} ���������� ������ �������
{1E2BE8}[ * ]{ffffff} �� ����� ���� �� ���������� �������
{1E2BE8}[ * ]{ffffff} �� ������� ������� ������
{1E2BE8}[ * ]{ffffff} �� ��������� ���� ������ �����������

 {ffffff}__________________________________________________________________________________________________________
  ]]
  sampShowDialog(1011, "{ffffff} Konohagakure ", ustav, "{ffffff}�������", "", 0)
end

function headband()
  lua_thread.create(function()
    sampSendChat("/do � ������� ����� ������� Konohagakure.")
    wait(250)
    sampSendChat("/me ������� �� ������� ������� Konohagakure.")
    wait(750)
    sampSendChat("/me ���������� ������� �� ������")
    wait(800)
    sampSendChat("/lime")
    wait(250)
    sampSendChat("/do ������� �� ������.")
  end)
end

function udost()
  lua_thread.create(function()
  	local result, playerID = sampGetPlayerIdByCharHandle(playerPed)
  	if result then
  		namelol = sampGetPlayerNickname(playerID)
  	  sampSendChat("/me ������� �� ������� ������������� Konohagakure.")
      wait(1000)
  	  sampSendChat("/do �� ������������� �������� ������ Konohagakure.")
      wait(1000)
  	  sampSendChat("/me ���������� ������������� ������� �������� ��������.")
      wait(1000)
  	  sampSendChat("/do ________________Konohagakure________________")
  	  sampSendChat("/do ���: "..namelol)
  	  sampSendChat("/do ���� ������: 02.05.18.")
  	  sampSendChat("/do ������� ������: SMFH")
  	  sampSendChat("/do ____________________________________________")
      wait(1500)
  	  sampSendChat("/me ����� ������������� � ������.")
    end
  end)
end

function ring()
  lua_thread.create(function()
    sampSendChat("/do ������ � ����������� Konohagakure � �������.")
    wait(500)
    sampSendChat("/me ������ ���� � ������ ���� ������")
    wait(500)
    sampSendChat("/me ������� �������� ������ � ������ ���")
    wait(500)
    sampSendChat("/me ����� ������ �� ������� �����")
    wait(500)
    sampSendChat("/lime")
    sampSendChat("/do ������ �� ������� ������")
  end)
end

function bon()
    lua_thread.create(function()
      sampSendChat("/me ������ ����� ������� � �����")
      wait(750)
      sampSendChat("/me �������� ������� �����")
      wait(750)
      sampSendChat("/me ���� �� ������� ������")
      wait(750)
      sampSendChat("/koster") end)
end

function hclose()
  lua_thread.create(function()
    sampSendChat("/do ����� � ����������� � �������� ��������.")
      wait(1000)
    sampSendChat("/me �������� ����� �� ������")
     wait(1000)
    sampSendChat("/me ������ ����� � ������� �� � ������")
    sampSendChat("/myhouse")
  end)
end

function hopen()
  lua_thread.create(function()
    sampSendChat("/me ������ ����� �� �������")
    wait(1000)
    sampSendChat("/me ������� ���� � ����� � ��������� ��� �� ������")
    wait(750)
    sampSendChat("/me ������ �����")
    sampSendChat("/myhouse")
  end)
end
