script_name("Konoha")
script_description("/konoha - Помощь")
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
  	sampAddChatMessage("{ffffff}*[{FF1493}Konohagakure{ffffff}]: Помощь - /konoha", 0xC1C1C1)
  end

  sampRegisterChatCommand("konoha", konoha) -- Эти три команды будут задействованы в скрипте, остальное - лишнее
  sampRegisterChatCommand("ustav", ustav) -- Эти три команды будут задействованы в скрипте, остальное - лишнее
  sampRegisterChatCommand("udost", udost) -- Эти три команды будут задействованы в скрипте, остальное - лишнее
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

{FF1493}*{ffffff}Устав деревни - {FF1493}/ustav
{FF1493}*{ffffff}Повязка деревни- {FF1493}/headband
{FF1493}*{ffffff}Удостоверение деревни - {FF1493}/udost
{FF1493}*{ffffff}Кольцо деревни(Аналог повязки) - {FF1493}/ring
{FF1493}*{ffffff}Установить костер - {FF1493}/bon
{FF1493}*{ffffff}Закрыть дверь дома - {FF1493}/hclose
{FF1493}*{ffffff}Открыть дверь дома - {FF1493}/hopen

   {FF1493}__________________________________________________________________________________________________________
]]
  sampShowDialog(1010, "{ffffff} Команды скрипта", konoha, "{ffffff}Закрыть", "", 0)
end

function ustav()
  local ustav = [[
  {ffffff}__________________________________________________________________________________________________________

{ff0000}[ Konoha ]{ffffff}
Konohagakure - Деревня, основанная на улучшении внутренней и внешней политики, расширении экономики и сфер влияния.

{ff0000}[ Разбитие по группам ]
{1E2BE8}[ * ]{ffffff} Группы состоящие из одинаковых рангов может составить старший состав
{1E2BE8}[ * ]{ffffff} Группы с определенным командиром могут быть собраны из рангов ниже

{ff0000}[ Приоритеты ]
{1E2BE8}[ * ]{ffffff} Желательно устранять всех свидетлей, но НЕ ГРАЖДАНСКИХ, а тех, которые могут быть опасны
{1E2BE8}[ * ]{ffffff} Если время поджимает, или высок уровень риска, можно не устранять свидетелей

{ff0000}[ Субординация ]
{1E2BE8}[ * ]{ffffff} Нужно подчиняться командиру
{1E2BE8}[ * ]{ffffff} Если действия направлены только во благо группы, можно нарушить 3.1
{1E2BE8}[ * ]{ffffff} Можно взять командование на себя, если на это согласна вся группа, не считая командира

{ff0000}[ Обязанности членов деревни ]
{1E2BE8}[ * ]{ffffff} Подчиняться старшему составу (6-8 ранги одинаковы в правах)
{1E2BE8}[ * ]{ffffff} Носить отличительные знаки по возможности (/lime)
{1E2BE8}[ * ]{ffffff} Проживать на территории деревни
{1E2BE8}[ * ]{ffffff} Присутствовать на собрании

{ff0000}[ Членам деревни запрещено ]
{1E2BE8}[ * ]{ffffff} Оскорблять других жителей
{1E2BE8}[ * ]{ffffff} Не иметь дома на территории деревни
{1E2BE8}[ * ]{ffffff} Не уважать старший состав
{1E2BE8}[ * ]{ffffff} Не выполнять свои прямые обязанности

 {ffffff}__________________________________________________________________________________________________________
  ]]
  sampShowDialog(1011, "{ffffff} Konohagakure ", ustav, "{ffffff}Закрыть", "", 0)
end

function headband()
  lua_thread.create(function()
    sampSendChat("/do В кармане лежит повязка Konohagakure.")
    wait(250)
    sampSendChat("/me достает из кармана повязку Konohagakure.")
    wait(750)
    sampSendChat("/me завязывает повязку на голове")
    wait(800)
    sampSendChat("/lime")
    wait(250)
    sampSendChat("/do Повязка на голове.")
  end)
end

function udost()
  lua_thread.create(function()
  	local result, playerID = sampGetPlayerIdByCharHandle(playerPed)
  	if result then
  		namelol = sampGetPlayerNickname(playerID)
  	  sampSendChat("/me достает из кармана удостоверение Konohagakure.")
      wait(1000)
  	  sampSendChat("/do На удостоверении железный символ Konohagakure.")
      wait(1000)
  	  sampSendChat("/me Показывает удостоверение деревни человеку напротив.")
      wait(1000)
  	  sampSendChat("/do ________________Konohagakure________________")
  	  sampSendChat("/do Имя: "..namelol)
  	  sampSendChat("/do Дата выдачи: 02.05.18.")
  	  sampSendChat("/do Подпись выдачи: SMFH")
  	  sampSendChat("/do ____________________________________________")
      wait(1500)
  	  sampSendChat("/me убрал удостоверение в карман.")
    end
  end)
end

function ring()
  lua_thread.create(function()
    sampSendChat("/do Кольцо с гравировкой Konohagakure в кармане.")
    wait(500)
    sampSendChat("/me всунув руку в карман ищет кольцо")
    wait(500)
    sampSendChat("/me схватил пальцами кольцо и достал его")
    wait(500)
    sampSendChat("/me надел кольцо на средний палец")
    wait(500)
    sampSendChat("/lime")
    sampSendChat("/do Кольцо на среднем пальце")
  end)
end

function bon()
    lua_thread.create(function()
      sampSendChat("/me собрал сухой хворост в кучку")
      wait(750)
      sampSendChat("/me высекает огнивом искру")
      wait(750)
      sampSendChat("/me дует на тлеющий огонек")
      wait(750)
      sampSendChat("/koster") end)
end

function hclose()
  lua_thread.create(function()
    sampSendChat("/do Ключи с гравировкой в замочной скважине.")
      wait(1000)
    sampSendChat("/me повернул ключи до щелчка")
     wait(1000)
    sampSendChat("/me достал ключи и положил их в карман")
    sampSendChat("/myhouse")
  end)
end

function hopen()
  lua_thread.create(function()
    sampSendChat("/me достал ключи из кармана")
    wait(1000)
    sampSendChat("/me вставил ключ в замок и провернул его до щелчка")
    wait(750)
    sampSendChat("/me открыл дверь")
    sampSendChat("/myhouse")
  end)
end
