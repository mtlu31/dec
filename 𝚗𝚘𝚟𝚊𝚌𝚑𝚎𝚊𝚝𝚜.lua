  -- -- -- -- -- -- -- -- -- --  ᴍᴏᴅɪғʏ ᴀᴅʀᴇss ᴠᴀʟᴜᴇ  -- -- -- -- -- -- -- -- -- -- --

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

-- -- -- -- -- -- -- -- -- -- sᴄʀɪᴘᴛ ɢɪʀɪs -- -- -- -- -- -- -- -- -- --
gg.toast("■□□□□□□□□□10%  ")
gg.sleep(200)
gg.toast("■■□□□□□□□□20%  ")
gg.sleep(200)
gg.toast("■■■□□□□□□□30%  ")
gg.sleep(200)
gg.toast("■■■■□□□□□□40%  ")
gg.sleep(200)
gg.toast("■■■■■□□□□□50%  ")
gg.sleep(200)
gg.toast("■■■■■■□□□□60%  ")
gg.sleep(200)
gg.toast("■■■■■■■□□□70%  ")
gg.sleep(200)
gg.toast("■■■■■■■■□□80%  ")
gg.sleep(200)
gg.toast("■■■■■■■■■□90%. ")
gg.sleep(200)
gg.toast("■■■■■■■■■■100%")
gg.sleep(500)
gg.toast("⚪ ᴄᴏᴅᴇʀ ʙʏ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪")
gg.sleep(300)
gg.alert("\n✩▬▬▬▬▬▬▬▬▬▬▬▬▬▬✩\n╔═══════════════╗\n👨‍🎓 Cᴏᴅᴇʀ ʙʏ ɴᴏᴠᴀᴄʜᴇᴀᴛs\n➤ Tᴇʟᴇɢʀᴀᴍ\n  ➡️   @ɴᴏᴠᴀʜᴀᴄᴋᴘᴍ\n  ➡️   @ɴᴏᴠᴀᴄʜᴇᴀᴛs\n➤ TɪᴋTᴏᴋ \n  ➡️   @ɴᴏᴠᴀʜᴀᴄᴋ66\n➤  YᴏᴜTᴜʙᴇ \n  ➡️   𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂\n╚═══════════════╝\n✩▬▬▬▬▬▬▬▬▬▬▬▬▬▬✩\n", "Devam Et ➡️")
gg.sleep(2000)
  ----------------------------------------------------------------------------------------------
 gg.alert("⭕ ʙɪʀᴀᴢᴅᴀɴ ᴋᴇʏ ɢɪʀɪs ʙᴏʟᴜᴍᴜɴᴇ ᴀᴋᴛᴀʀɪʟᴀᴄᴀᴋsɪɴɪᴢ | ᴋᴇʏ ɪᴄɪɴ @ɴᴏᴠᴀᴄʜᴇᴀᴛs ⭕")
gg.sleep(500)
LHPS = gg.prompt({
"🛡️ᴋᴇʏ ɢɪʀɪs ɴᴏᴋᴛᴀsɪ🛡️\n\n「🔐」ᴋᴇʏ ɪᴄɪɴ ᴛᴇʟᴇɢʀᴀᴍ ᴀᴅʀᴇsɪᴍɪᴢᴇ ʙᴀᴋᴀʙɪʟɪʀsɪɴɪᴢ @ɴᴏᴠᴀᴄʜᴇᴀᴛs ʜᴇʀ ɢᴜɴ ɢᴜɴᴄᴇʟ sɪғʀᴇʏɪ ᴏʀᴅᴀɴ ᴀʟɪɴɪᴢ ✅"
}, {}, {})
if not LHPS then
os.exit()
end

if LHPS[1] == "8989" then
gg.toast("🛡️ ɢɪʀɪs ʙᴀsᴀʀɪʟɪ | sɪғʀᴇ ᴅᴏɢʀᴜ ✅")
else
gg.alert("》❕《sɪғʀᴇ ʏᴀɴʟɪs》❕《", "ᴄɪᴋɪs ʏᴀᴘ")
  os.exit()
 end
-- -- -- -- -- -- -- -- -- -- ᴀɴᴀ sᴀʏғᴀ -- -- -- -- -- -- -- -- -- --
on = ' [✔️] '
off = ' [✖️] ' 

HOME = 1
function HOME()
    MN = gg.choice({
      "╔───── ¤ ◎◎ ¤ ─────╗\n            🛡️ ᴀɴᴛɪʙᴀɴ 🛡️              \n╚───── ¤ ◎◎ ¤ ─────╝",
      "╔───── ¤ ◎◎ ¤ ─────╗\n          🚯 ʜıᴢʟı ᴏɴ/ᴏғғ 🚯         \n╚───── ¤ ◎◎ ¤ ─────╝",
      "╔───── ¤ ◎◎ ¤ ─────╗\n           👀 ᴡᴀʟʟʜᴀᴄᴋ 👀            \n╚───── ¤ ◎◎ ¤ ─────╝",
      "╔───── ¤ ◎◎ ¤ ─────╗\n         🔫 sɪʟᴀʜ ᴍᴇɴᴜ 🔫           \n╚───── ¤ ◎◎ ¤ ─────╝",
      "╔───── ¤ ◎◎ ¤ ─────╗\n         ⚔️ ᴏʏᴜɴ ᴍᴇɴᴜ ⚔️           \n╚───── ¤ ◎◎ ¤ ─────╝",
      "╔───── ¤ ◎◎ ¤ ─────╗\n         🚀 ʜıᴢ ʜɪʟᴇʟᴇʀɪ 🚀          \n╚───── ¤ ◎◎ ¤ ─────╝",
      "╔───── ¤ ◎◎ ¤ ─────╗\n          🚙 ᴜᴄᴀɴ ᴀʀᴀʙᴀ 🚙         \n╚───── ¤ ◎◎ ¤ ─────╝",
      "╔───── ¤ ◎◎ ¤ ─────╗\n                🚪ᴄɪᴋɪs🚪                 \n╚───── ¤ ◎◎ ¤ ─────╝"
  }, nil,  "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
  if MN == nil then
  else
  if MN == 1 then AntiBanMenu()end
  if MN == 2 then OnOff()end
  if MN == 3 then wallhack()end
  if MN == 4 then WeaponMenu()end
  if MN == 5 then GameMenu()end
  if MN == 6 then SpeedMenu()end
  if MN == 7 then JumpCarMenu()end
  if MN == 8 then Cikis()end
end
PUBGMH = -1
end
-- -- -- -- -- -- -- -- --   ᴀɴᴛɪʙᴀɴ ᴍᴇɴᴜ   -- -- -- -- -- -- -- -- --
function AntiBanMenu()
gg.alert("⚠️ DIKKAT ⚠️\n\n⚪ İlk misafir hesapta deneyin\n\n📢 Herhangi bir <İstemciden kaynakli ban> yerseniz ᴏɴ/ᴏғғ 🛡️ tuşunu maçta ilk alanda kullanınız.\n\n➡️ Böylece 10 - 30 dakika ban yemezsiniz. 🛡️ Safe oynayın 🛡️")
   MN1 = gg.choice({
   '「🛡️」  ᴀɴᴛɪʙᴀɴ ɢʟᴏʙᴀʟ - ᴋᴏʀᴇ\n☞[ʟᴏʙɪ]',
   '「🧹」  ʀᴇᴘᴏʀᴛ - ʟᴏɢ ᴛᴇᴍɪᴢʟᴇʏɪᴄɪ\n☞[ʟᴏʙɪ]',
   '「🔙」  🄶🄴🅁🄸',
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
  if MN1 == nil then
  else
  if MN1 == 1 then antiban()end
  if MN1 == 2 then log()end
  if MN1 == 3 then HOME()end
end
  PUBGMH = -1
end
  
function antiban()
gg.alert("✧▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬✧\n🛡️ ᴠɪᴘ ᴀɴᴛɪʙᴀɴ ᴀᴄɪʟɪʏᴏʀ..ʟᴏɢʟᴀʀ sɪʟɪɴɪʏᴏʀ..ᴮᴱᴷᴸᴱ⌛\n✧▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬✧")
    if gg.getTargetPackage() == "com.tencent.ig" or gg.getTargetPackage() == "com.pubg.krmobile" or gg.getTargetPackage() == "com.vng.pubgmobile" or gg.getTargetPackage() == "com.tencent.iglite" then
    else
      gg.alert("\n⚠️ᴀᴅᴀᴍɪ ᴅᴇʟɪʀᴛᴍᴇ ɢɪᴛ ᴘᴜʙɢʏɪ ᴀᴄ ᴀǫ⚠️\n")
      os.exit()
    end
gg.setVisible(false)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
gg.refineNumber("582749752655872", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD)
gg.refineNumber("565157566611456", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1179403647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("65793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1718511986", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1986225490", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("911104607", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1734308723", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1735681395", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1718511967", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1734308723", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1986225522", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1734964063", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1711302260", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1711302006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2003790967", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1718511986", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999999999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("ᴀɴᴛɪʙᴀɴ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
end

function log()
gg.setVisible(false)
    os.remove("/storage/emulated/0/tencent")
    os.remove("/storage/emulated/0/MidasOverse")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
    os.remove("/storage/emulated/0/tencent")
    os.remove("/storage/emulated/0/MidasOverse")
    os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
    os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
    os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
    os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
    os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
    os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
    os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
    os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
    os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
    os.remove("/storage/emulated/0/tencent")
    os.remove("/storage/emulated/0/MidasOverse")
    os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
    os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
    os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
    os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
    os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
    os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
    os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
    os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
    os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
    gg.sleep(100)
    gg.toast(" \nBekle...10%\n🧹▒▒▒▒▒▒▒▒▒")
    gg.sleep(100)
    gg.toast(" \nBekle...20%\n🧹🧹▒▒▒▒▒▒▒▒")
    gg.sleep(100)
    gg.toast(" \nBekle...30%\n🧹🧹🧹▒▒▒▒▒▒▒")
    gg.sleep(100)
    gg.toast(" \nBekle...40%\n🧹🧹🧹🧹▒▒▒▒▒▒")
    gg.sleep(100)
    gg.toast(" \nBekle...50%\n🧹🧹🧹🧹🧹▒▒▒▒▒")
    gg.sleep(100)
    gg.toast(" \nBekle...60%\n🧹🧹🧹🧹🧹🧹▒▒▒▒")
    gg.sleep(100)
    gg.toast(" \nBekle...70%\n🧹🧹🧹🧹🧹🧹🧹▒▒▒")
    gg.sleep(100)
    gg.toast(" \nBekle...80%\n🧹🧹🧹🧹🧹🧹🧹🧹▒▒")
    gg.sleep(100)
    gg.toast(" \nBekle...90%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹▒")
    gg.sleep(100)
    gg.toast(" \nBaşarılı…100%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹🧹")
    gg.sleep(100)
    gg.toast("ʟᴏɢʟᴀʀ ʙᴀsᴀʀɪʏʟᴀ ᴛᴇᴍɪᴢʟᴇɴᴅɪ")
end
-- -- -- -- -- -- -- -- --   Fast Data ON/OFF   -- -- -- -- -- -- -- -- --
function OnOff()
  gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("220676386071773185", gg.TYPE_QWORD)
    gg.getResults(69)
    gg.editAll("220676386036121600", gg.TYPE_QWORD)
    gg.toast("⛔ ɪɴᴛᴇʀɴᴇᴛ ʙᴀɢ̆ʟᴀɴᴛısı ᴋᴏᴘᴀʀıʟᴅı ⛔")
    gg.sleep(6000)
    gg.editAll("220676386071773185", gg.TYPE_QWORD)
    gg.clearResults()
    gg.toast("✅ ɪɴᴛᴇʀɴᴇᴛ ʙᴀɢ̆ʟᴀɴᴛısı sᴀɢ̆ʟᴀɴᴅı ✅")
end
  ----------------------------------------------------------------------------------------------
  function wallhack()
  MN7 = gg.choice({
  	"「👀」sɴᴀᴘᴅʀᴀɢᴏɴ  ᴡᴀʟʟʜᴀᴄᴋ",
      "「🌈」sɴᴀᴘᴅʀᴀɢᴏɴ  ʀᴇɴᴋ",
      "「🔙」🄶🄴🅁🄸"
 }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
 if MN7 == nil then
  else
  if MN7 == 1 then WH2()end
  if MN7 == 2 then CLR2()end
  if MN7 == 3 then HOME()end
end
  PUBGMH = -1
end
  ----------------------------------------------------------------------------------------------
clrred625 = off
clryellow625 = off
clrred660 = off
clryellow660 = off
clrred835 = off
clryellow835 = off
clrwhiteall = off
clrblackall = off

function CLR2()
CLRMN2 = gg.multiChoice({
"「📂」  SD425 ᴄᴏʟᴏʀ ᴍᴇɴᴜ ",
"「📂」  SD675 ᴄᴏʟᴏʀ ᴍᴇɴᴜ ",
"「📂」  SD845 ᴄᴏʟᴏʀ ᴍᴇɴᴜ ",
"「📂」  SD855 ᴄᴏʟᴏʀ ᴍᴇɴᴜ ",
"「📂」  SD865 ᴄᴏʟᴏʀ ᴍᴇɴᴜ ",
"「🔴」  ᴋɪʀᴍɪᴢɪ ʙᴏᴅʏ 625 "..clrred625,
"「🟡」  sᴀʀɪ ʙᴏᴅʏ 625 "..clryellow625,
"「🔴」  ᴋɪʀᴍɪᴢɪ ʙᴏᴅʏ 660 "..clrred660,
"「🟡」  sᴀʀɪ ʙᴏᴅʏ 660 "..clryellow660,
"「🔴」  ᴋɪʀᴍɪᴢɪ ʙᴏᴅʏ 835 "..clrred835,
"「🟡」  sᴀʀɪ ʙᴏᴅʏ 835 "..clryellow835,
"「⚪」  ᴡʜɪᴛᴇ ʙᴏᴅʏ ᴀʟʟ "..clrwhiteall,
"「⚫」  ʙʟᴀᴄᴋ ʙᴏᴅʏ ᴀʟʟ ",
"「🔙」ɢᴇʀɪ",
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
if CLRMN2 == nil then else
if CLRMN2[1] == true then CLR4252() end
if CLRMN2[2] == true then CLR6752() end
if CLRMN2[3] == true then CLR8452() end
if CLRMN2[4] == true then CLR8552() end
if CLRMN2[5] == true then CLR8652() end
if CLRMN2[6] == true then RED625() end
if CLRMN2[7] == true then YELL625() end
if CLRMN2[8] == true then RED660C() end
if CLRMN2[9] == true then YELL660() end
if CLRMN2[10] == true then RED835() end
if CLRMN2[11] == true then YELL835() end
if CLRMN2[12] == true then WHITEALL() end
if CLRMN2[13] == true then BLACKALL() end
if CLRMN2[14] == true then HOME() end
end
PUBGMH = -1
end

function RED660C()
if clrred660 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrred660s1 = gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clrred660 = on
else
gg.clearResults()
gg.setValues(clrred660s1)
gg.clearResults()
gg.toast("Red ᴠᴜᴄᴜᴛ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrred660 = off
end
end

function RED625()
if clrred625 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrred625s1 = gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clrred625 = on
else
gg.clearResults()
gg.setValues(clrred625s1)
gg.clearResults()
gg.toast("Red ᴠᴜᴄᴜᴛ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrred625 = off
end
end

function YELL625()
if clryellow625 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('1,080,033,292D;786,441D;8,200D:21::', gg.TYPE_DWORD,false, gg.SIGN_EQUAL,0,-1)
gg.searchNumber('8200', gg.TYPE_DWORD,false, gg.SIGN_EQUAL,0,-1)
clryellow625s1 = gg.getResults(10)
gg.editAll('8198', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Yellow ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clryellow625 = on
else
gg.clearResults()
gg.setValues(clryellow625s1)
gg.clearResults()
gg.toast("Yellow ᴠᴜᴄᴜᴛ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clryellow625 = off
end
end

function WHITEALL()
if clrwhiteall == off then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
clrwhitealls1 = gg.getResults(1)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("White ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clrwhiteall = on
else
gg.clearResults()
gg.setValues(clrwhitealls1)
gg.clearResults()
gg.toast("White ᴠᴜᴄᴜᴛ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrwhiteall = off
end
end

function BLACKALL() --1.2
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x2D96C18
setvalue(so+py,16,14)
gg.clearResults()
gg.toast("Black ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
end

function RED835()
if clrred835 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrred835s1 = gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("「🔴」 ᴋɪʀᴍɪᴢɪ ʙᴏᴅʏ 835 ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clrred835 = on
else
gg.clearResults()
gg.setValues(clrred835s1)
gg.clearResults()
gg.toast("「🔴」 ᴋɪʀᴍɪᴢɪ ʙᴏᴅʏ 835 ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrred835 = off
end
end

function YELL835()
if clryellow835 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber( "2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber( "2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
clryellow835s1 = gg.getResults(999)
gg.editAll( "120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber( "2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber( "2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
clryellow835s2 = gg.getResults(999)
gg.editAll( "120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber( "8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber( "8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress( "098", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
clryellow835s3 = gg.getResults(999)
gg.editAll( "8198", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("「🟡」 sᴀʀɪ ʙᴏᴅʏ 835 ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clryellow835 = on
else
gg.clearResults()
gg.setValues(clryellow835s1)
gg.setValues(clryellow835s2)
gg.setValues(clryellow835s3)
gg.clearResults()
gg.toast("「🟡」 sᴀʀɪ ʙᴏᴅʏ 835 ᴅᴇᴠʀᴇ ᴅɪsɪ")
clryellow835 = off
end
end

function YELL660()
if clryellow660 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("536889616;8200;1194344458:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0) 
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0) 
clryellow660s1 = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil) 
gg.editAll("6", gg.TYPE_DWORD) 
gg.clearResults() 
gg.setRanges(gg.REGION_VIDEO) 
gg.searchNumber("1669398530;8200;1194380045:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0) 
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0) 
clryellow660s2 = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil) 
gg.editAll("6", gg.TYPE_DWORD) 
gg.clearResults() 
gg.toast("Yellow ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clryellow660 = on
else
gg.clearResults()
gg.setValues(clryellow660s1)
gg.setValues(clryellow660s2)
gg.clearResults()
gg.toast("Yellow ᴠᴜᴄᴜᴛ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clryellow660 = off
end
end

function CLR4252()
CLRMN4252 = gg.multiChoice({
"「🔴」  ᴋɪʀᴍɪᴢɪ ʙᴏᴅʏ 425 ",
"「🟡」  sᴀʀɪ ʙᴏᴅʏ 425 ",
"「🔙」ɢᴇʀɪ",
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
if CLRMN4252 == nil then else
if CLRMN4252[1] == true then RED425()end
if CLRMN4252[2] == true then YELL425()end
if CLRMN4252[3] == true then CLR2()end
end
PUBGMH = -1
end

function RED425()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('"8204"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress('"408"', -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('"96"', gg.TYPE_DWORD)
local t = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
gg.clearResults()
gg.toast("Red ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
end

function YELL425()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('"8204"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress('"408"', -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('"95"', gg.TYPE_DWORD)
local t = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
gg.clearResults()
gg.toast("Yellow ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
end

-- -- -- -- -- -- -- -- -- --  ʀᴇɴᴋ Menu  SD 675 -- -- -- -- -- -- -- -- --

clrwhite675 = off
clrblue675 = off
clrgreen675 = off

function CLR6752()
CLRMN6752 = gg.multiChoice({
"「🔴」  ᴋɪʀᴍɪᴢɪ ʙᴏᴅʏ 675 "..clrwhite675,
"「🔵」  ᴍᴀᴠɪ ʙᴏᴅʏ 675 "..clrblue675,
"「🟢」  ʏᴇsɪʟ ʙᴏᴅʏ 675 "..clrgreen675,
"「🔙」ɢᴇʀɪ",
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
if CLRMN6752 == nil then else
if CLRMN6752[1] == true then WHITE675()end
if CLRMN6752[2] == true then BLUE675()end
if CLRMN6752[3] == true then GREEN675()end
if CLRMN6752[4] == true then CLR2()end
end
PUBGMH = -1
end

function GREEN675()
if clrgreen675 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("69,897;147,457;69,739", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrgreen675s1 = gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("ʀᴇɴᴋ 675 Green")
gg.clearResults()
clrgreen675 = on
else
gg.clearResults()
gg.setValues(clrgreen675s1)
gg.clearResults()
gg.toast("ʀᴇɴᴋ 675 Green ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrgreen675 = off
end
end

function WHITE675()
if clrwhite675 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537137162;8200;1194344459:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrwhite675s1 = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast('Red ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ')
clrwhite675 = on
else
gg.clearResults()
gg.setValues(clrwhite675s1)
gg.clearResults()
gg.toast("Red ᴠᴜᴄᴜᴛ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrwhite675 = off
end
end

function BLUE675()
if clrblue675 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537137162;8200;1194344459;1194344485;8202;1194379568:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrblue675s1 = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast('Blue ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ')
clrblue675 = on
else
gg.clearResults()
gg.setValues(clrblue675s1)
gg.clearResults()
gg.toast("Blue ᴠᴜᴄᴜᴛ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrblue675 = off
end
end

-- -- -- -- -- -- -- -- -- --  ʀᴇɴᴋ Menu  SD 845 -- -- -- -- -- -- -- -- --

clrred845 = off
clryellow845 = off
clrgreen845 = off
clrblue845 = off

function CLR8452()
CLRMN8452 = gg.multiChoice({
"「🔴」  ᴋɪʀᴍɪᴢɪ ʙᴏᴅʏ 845 "..clrred845,
"「🟡」  sᴀʀɪ ʙᴏᴅʏ 845 "..clryellow845,
"「🟢」  ʏᴇsɪʟ ʙᴏᴅʏ 845 "..clrgreen845,
"「🔵」  ᴍᴀᴠɪ ʙᴏᴅʏ 845 "..clrblue845,
"「🔙」ɢᴇʀɪ",
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
if CLRMN8452 == nil then else
if CLRMN8452[1] == true then RED845()end
if CLRMN8452[2] == true then YELL845()end
if CLRMN8452[3] == true then GREEN845()end
if CLRMN8452[4] == true then BLUE845()end
if CLRMN8452[5] == true then CLR2()end
end
PUBGMH = -1
end

function YELL845()
if clryellow845 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;1194344459;8201;1194346792", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clryellow845s1 = gg.getResults(100)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Yellow ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clryellow845 = on
else
gg.clearResults()
gg.setValues(clryellow845s1)
gg.clearResults()
gg.toast("Yellow ᴠᴜᴄᴜᴛ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clryellow845 = off
end
end

function RED845()
if clrred845 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;1194344459;8201;1194346792", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrred845s1 = gg.getResults(100)
gg.editAll("8199", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red ʀᴇɴᴋ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clrred845 = on
else
gg.clearResults()
gg.setValues(clrred845s1)
gg.clearResults()
gg.toast("Red ʀᴇɴᴋ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrred845 = off
end
end

function GREEN845()
if clrgreen845 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;1194344459;8201;1194346792", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrgreen845s1 = gg.getResults(100)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Green ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clrgreen845 = on
else
gg.clearResults()
gg.setValues(clrgreen845s1)
gg.clearResults()
gg.toast("Green ᴠᴜᴄᴜᴛ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrgreen845 = off
end
end

function BLUE845()
if clrblue845 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;1194344459;8201;1194346792", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrblue845s1 = gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Blue ᴠᴜᴄᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clrblue845 = on
else
gg.clearResults()
gg.setValues(clrblue845s1)
gg.clearResults()
gg.toast("Blue ᴠᴜᴄᴜᴛ ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrblue845 = off
end
end

-- -- -- -- -- -- -- -- -- --  ʀᴇɴᴋ Menu  SD 855 -- -- -- -- -- -- -- -- --

function CLR8552()
gg.alert("ʏᴀᴘɪᴍ ᴀsᴀᴍᴀsɪɴᴅᴀ ᴋᴏᴅʟᴀʀ ᴄᴀʟɪsᴍɪʏᴏʀ!")
CLRMN8552 = gg.multiChoice({
"「🟢」  ʏᴇsɪʟ ʙᴏᴅʏ 855 "..clrgreen845,
"「🟡」  sᴀʀɪ ʙᴏᴅʏ 855 "..clryellow845,
"「🔵」  ᴍᴀᴠɪ ʙᴏᴅʏ 855 "..clrblue845,
"「🔴」  ᴋɪʀᴍɪᴢɪ ʙᴏᴅʏ 855 "..clrred845,
"「🔙」ɢᴇʀɪ",
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
if CLRMN8552 == nil then else
if CLRMN8552[1] == true then GREEN845() end
if CLRMN8552[2] == true then YELL845() end
if CLRMN8552[3] == true then BLUE845() end
if CLRMN8552[4] == true then RED845() end
if CLRMN8552[5] == true then CLR2() end
end
PUBGMH = -1
end

-- -- -- -- -- -- -- -- -- --  ʀᴇɴᴋ Menu  SD 865 -- -- -- -- -- -- -- -- --

clryellow865 = off
clrgreen865 = off
clrpink865 = off
clrorange865 = off

function CLR8652()
CLRMN8652 = gg.multiChoice({
"「🟡」  sᴀʀɪ ʙᴏᴅʏ 865 "..clryellow865,
"「🟢」  ʏᴇsɪʟ ʙᴏᴅʏ 865 "..clrgreen865,
"「♓」  ᴘᴇᴍʙᴇ ʙᴏᴅʏ 865 "..clrpink865,
"「🟠」  ᴛᴜʀᴜɴᴄᴜ ʙᴏᴅʏ 865 "..clrorange865,
"「🔙」ɢᴇʀɪ",
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
if CLRMN8652 == nil then else
if CLRMN8652[1] == true then YELL865() end
if CLRMN8652[2] == true then GREEN865() end
if CLRMN8652[3] == true then PINK865() end
if CLRMN8652[4] == true then ORANGE865() end
if CLRMN8652[5] == true then CLR2() end
end
PUBGMH = -1
end

function YELL865()
if clryellow865 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8196;1194346786;8200;1194380068", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clryellow865s1 = gg.getResults(100)
gg.editAll("8198", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("「🟡」 sᴀʀɪ ʙᴏᴅʏ 865 ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clryellow865 = on
else
gg.clearResults()
gg.setValues(clryellow865s1)
gg.clearResults()
gg.toast("「🟡」 sᴀʀɪ ʙᴏᴅʏ 865 ᴅᴇᴠʀᴇ ᴅɪsɪ")
clryellow865 = off
end
end

function GREEN865()
if clrgreen865 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8196;1194346786;8200;1194380068", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrgreen865s1 = gg.getResults(100)
gg.editAll("56", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("「🟢」 ʏᴇsɪʟ ʙᴏᴅʏ 865 ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clrgreen865 = on
else
gg.clearResults()
gg.setValues(clrgreen865s1)
gg.clearResults()
gg.toast("「🟢」 ʏᴇsɪʟ ʙᴏᴅʏ 865 ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrgreen865 = off
end
end

function PINK865()
if clrpink865 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8196;1194346786;8200;1194380068", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrpink865s1 = gg.getResults(100)
gg.editAll("55", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("「♓」 ᴘᴇᴍʙᴇ ʙᴏᴅʏ 865 ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clrpink865 = on
else
gg.clearResults()
gg.setValues(clrpink865s1)
gg.clearResults()
gg.toast("「♓」 ᴘᴇᴍʙᴇ ʙᴏᴅʏ 865 ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrpink865 = off
end
end

function ORANGE865()
if clrorange865 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8196;1194346786;8200;1194380068", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
clrorange865s1 = gg.getResults(100)
gg.editAll("31", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("「🟠」 ᴛᴜʀᴜɴᴄᴜ ʙᴏᴅʏ 865 ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
clrorange865 = on
else
gg.clearResults()
gg.setValues(clrorange865s1)
gg.clearResults()
gg.toast("「🟠」 ᴛᴜʀᴜɴᴄᴜ ʙᴏᴅʏ 865 ᴅᴇᴠʀᴇ ᴅɪsɪ")
clrorange865 = off
end
end
-- -- -- -- -- -- -- --   ᴡᴀʟʟʜᴀᴄᴋ ᴍᴇɴᴜ   -- -- -- -- -- -- -- -- --
whs425 = off
whs430 = off
whs625 = off
whs6252 = off
whs636 = off
whs660 = off
whs665 = off
whs675 = off
whs6752 = off
whs710 = off
whs730 = off
whs810 = off
whs820 = off
whs835 = off
whs845 = off
whs855 = off
whs865 = off
whsall = off

function WH2()
WHMN2 = gg.multiChoice({
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 425 ᴬᶜᴷᵃᵖᵃᵗ"..whs425,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 430 ᴬᶜᴷᵃᵖᵃᵗ"..whs430,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 625 ᴬᶜᴷᵃᵖᵃᵗ"..whs625,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 625 v² ᴬᶜᴷᵃᵖᵃᵗ"..whs6252,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 636 ᴬᶜᴷᵃᵖᵃᵗ"..whs636,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 660 ᴬᶜᴷᵃᵖᵃᵗ"..whs660,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 665 ᴬᶜᴷᵃᵖᵃᵗ"..whs665,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 675 ᴬᶜᴷᵃᵖᵃᵗ"..whs675,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 675 v² ᴬᶜᴷᵃᵖᵃᵗ"..whs6752,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 710 ᴬᶜᴷᵃᵖᵃᵗ"..whs710,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 730 ᴬᶜᴷᵃᵖᵃᵗ"..whs730,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 810 ᴬᶜᴷᵃᵖᵃᵗ"..whs810,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 820 ᴬᶜᴷᵃᵖᵃᵗ"..whs820,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 835 ᴬᶜᴷᵃᵖᵃᵗ"..whs835,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 845 ᴬᶜᴷᵃᵖᵃᵗ"..whs845,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 855 ᴬᶜᴷᵃᵖᵃᵗ"..whs855,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ 865 ᴬᶜᴷᵃᵖᵃᵗ"..whs865,
"「👀」  sɴᴀᴘᴅʀᴀɢᴏɴ ᴀʟʟ ᴅᴇᴠɪᴄᴇs ᴬᶜᴷᵃᵖᵃᵗ"..whsall,
"「⚙️」  ғɪx ʙʟɪɴᴋ 430-835 ",
"「⚙️」  ғɪx ʙʟɪɴᴋ 845-855 ",
"「⬅️」  ɢᴇʀɪ",
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
if WHMN2 == nil then else
if WHMN2[1] == true then WH425()end
if WHMN2[2] == true then WH430()end
if WHMN2[3] == true then WH625()end
if WHMN2[4] == true then WH6252()end
if WHMN2[5] == true then WH636()end
if WHMN2[6] == true then WH660()end
if WHMN2[7] == true then WH665()end
if WHMN2[8] == true then WH675()end
if WHMN2[9] == true then WH6752()end
if WHMN2[10] == true then WH710()end
if WHMN2[11] == true then WH730()end
if WHMN2[12] == true then WH810()end
if WHMN2[13] == true then WH820()end
if WHMN2[14] == true then WH835()end
if WHMN2[15] == true then WH845()end
if WHMN2[16] == true then WH855()end
if WHMN2[17] == true then WH865()end
if WHMN2[18] == true then ALLD()end
if WHMN2[19] == true then FIXWH()end
if WHMN2[20] == true then FIXWH2()end
if WHMN2[21] == true then HOME()end
end
PUBGMH = -1
end

function WH865()
if whs865 == off then
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1.12020508e-19;3.76158192e-37;2.0;0.24022650719;0.69314718246::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
wh865s1 = gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1.25414346e-19;1.7506772e-39;2.0;1.8425141e-39;1.74488844e-39::\n", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
wh865s2 = gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("95D;2", gg.TYPE_FLOAT)
gg.searchNumber("2", gg.TYPE_FLOAT)
gg.refineAddress("9B0", gg.TYPE_FLOAT)
wh865s3 = gg.getResults(69696969)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.25000452995;2", gg.TYPE_FLOAT)
gg.searchNumber("2", gg.TYPE_FLOAT)
gg.refineAddress("6D0", gg.TYPE_FLOAT)
wh865s4 = gg.getResults(69696969)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 865] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR865()
whs865 = on
else
gg.clearResults()
gg.setValues(wh865s1)
gg.setValues(wh865s2)
gg.setValues(wh865s3)
gg.setValues(wh865s4)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 865] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs865 = off
end
end

function WH665()
if whs665 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.0F;1.66231134e-19F;0.0F;9.21942286e-41F;7.23035964e-15F;2.37549734116F;4.40284136e-29F;2.25000905991F;3.58159416e-39F;1.66433004e10F::37", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("200")
wh665s1 = gg.getResults(25)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.0F;-1.0F;0.0F;1.0F;-127.0F;0.24022650719F;0.69314718246F;0.00999999978F;-0.0F;0.0F::37", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("930")
wh665s2 = gg.getResults(25)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("A8C")
wh665s3 = gg.getResults(25)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("B10")
wh665s4 = gg.getResults(25)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("588")
wh665s5 = gg.getResults(25)
gg.editAll("999", 16)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 665] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR()
whs665 = on
else
gg.clearResults()
gg.setValues(wh665s1)
gg.setValues(wh665s2)
gg.setValues(wh665s3)
gg.setValues(wh665s4)
gg.setValues(wh665s5)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 665] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs665 = off
end
end

function FIXWH()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🛠️ Fix Blink 430-835 🛠️")
end

function FIXWH2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🛠️ Fix Blink 845-855 🛠️")
end

function FIXSCOPE()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("2.001", gg.TYPE_FLOAT)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("2.001", gg.TYPE_FLOAT)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🛠️ Fix Scope 🛠️")
end

function WH425()
if whs425 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44:97", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
whs425s1 = gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
whs425s2 = gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("227;1,073,741,824;1,073,741,824;-1,082,130,432;1,073,741,824:49", 4, false, 536870912, 0, -1)
gg.searchNumber("1,073,741,824", 4, false, 536870912, 0, -1)
whs425s3 = gg.getResults(100)
gg.editAll("1,123,024,896", 4)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 425] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR425()
whs425 = on
else
gg.clearResults()
gg.setValues(whs425s1)
gg.setValues(whs425s2)
gg.setValues(whs425s3)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 425] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs425 = off
end
end

function WH430()
if whs430 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs430s1 = gg.getResults(999)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs430s2 = gg.getResults(999)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 430] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR()
whs430 = on
else
gg.clearResults()
gg.setValues(whs430s1)
gg.setValues(whs430s2)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 430] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs430 = off
end
end

function WH625()
if whs625 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs625s1 = gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs625s2 = gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 625] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR()
whs625 = on
else
gg.clearResults()
gg.setValues(whs625s1)
gg.setValues(whs625s2)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 625] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs625 = off
end
end

function WH6252()
if whs6752 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.79227989e21;-5.56955884e-40;2.0;1.39125666e-19;2.0:9285", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs6752s1 = gg.getResults(50)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 625] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR()
whs6752 = on
else
gg.clearResults()
gg.setValues(whs6752s1)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 625] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs6752 = off
end
end

function WH636()
if whs636 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("-2 147 086 191", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
whs636s1 = gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
whs636s2 = gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
whs636s3 = gg.getResults(1337)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 636] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
whs636s4 = gg.getResults(20)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("ᴠᴜᴄᴜᴛ ʀᴇɴᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 636] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
gg.clearResults()
whs636 = on
else
gg.clearResults()
gg.setValues(whs636s1)
gg.setValues(whs636s2)
gg.setValues(whs636s3)
gg.setValues(whs636s4)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 636] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs636 = off
end
end

function WH660()
if whs660 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
whs660s1 = gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
whs660s2 = gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 660] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR()
whs660 = on
else
gg.clearResults()
gg.setValues(whs660s1)
gg.setValues(whs660s2)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 660] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs660 = off
end
end

function WH675()
if whs675 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
whs675s1 = gg.getResults(20)
gg.editAll("130", 16)
gg.toast("25%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("218D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
whs675s2 = gg.getResults(10)
gg.editAll("130", 16)
gg.toast("50%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("95D;2;9.2194229e-41", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
whs675s3 = gg.getResults(15)
gg.editAll("130", 16)
gg.toast("75%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("206D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
whs675s4 = gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 675] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR675()
whs675 = on
else
gg.clearResults()
gg.setValues(whs675s1)
gg.setValues(whs675s2)
gg.setValues(whs675s3)
gg.setValues(whs675s4)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 675] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs675 = off
end
end

function WH6752()
if whs6752 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8.2676609e-44;1.3912565e-19f;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8.2676609e-44;1.3912565e-19f;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs6752s1 = gg.getResults(6000)
gg.editAll("120", gg.TYPE_FLOAT)
gg.searchNumber("3.7615819e-37;1.1202056e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.7615819e-37;1.1202056e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
whs6752s2 = gg.getResults(6000)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 675] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR675()
whs6752 = on
else
gg.clearResults()
gg.setValues(whs6752s1)
gg.setValues(whs6752s2)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 675] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs6752 = off
end
end

function WH710()
if whs710 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs710s1 = gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs710s2 = gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 710] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR()
whs710 = on
else
gg.clearResults()
gg.setValues(whs710s1)
gg.setValues(whs710s2)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 710] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs710 = off
end
end

function WH810()
if whs810 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs810s1 = gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs810s2 = gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 810] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
gg.clearResults()
CLR()
whs810 = on
else
gg.clearResults()
gg.setValues(whs810s1)
gg.setValues(whs810s2)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 810] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs810 = off
end
end

function WH820()
if whs820 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs820s1 = gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs820s2 = gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 820] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
gg.clearResults()
CLR()
whs820 = on
else
gg.clearResults()
gg.setValues(whs820s1)
gg.setValues(whs820s2)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 820] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs820 = off
end
end

function WH835()
if whs835 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs835s1 = gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs835s2 = gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 835] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
gg.clearResults()
CLR()
whs835 = on
else
gg.clearResults()
gg.setValues(whs835s1)
gg.setValues(whs835s2)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 835] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs835 = off
end
end

function WH845()
if whs845 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('95D;2', gg.TYPE_FLOAT)
gg.searchNumber('2', gg.TYPE_FLOAT)
gg.refineAddress('9B0', gg.TYPE_FLOAT)
whs845s1 = gg.getResults(69696969)
gg.editAll('120', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs845s2 = gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 845] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR845()
whs845 = on
else
gg.clearResults()
gg.setValues(whs845s1)
gg.setValues(whs845s2)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 845] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs845 = off
end
end

function WH855()
if whs855 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('95D;2', gg.TYPE_FLOAT)
gg.searchNumber('2', gg.TYPE_FLOAT)
gg.refineAddress('9B0', gg.TYPE_FLOAT)
whs855s1 = gg.getResults(69696969)
gg.editAll('120', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs855s2 = gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 855] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR855()
whs855 = on
else
gg.clearResults()
gg.setValues(whs855s1)
gg.setValues(whs855s2)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [sɴᴀᴘᴅʀᴀɢᴏɴ 855] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs855 = off
end
end

function WH730()
if whs730 == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('95D;2', gg.TYPE_FLOAT)
gg.searchNumber('2', gg.TYPE_FLOAT)
gg.refineAddress('9B0', gg.TYPE_FLOAT)
whs730s1 = gg.getResults(69696969)
gg.editAll('120', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
whs730s2 = gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;1194344450;8201;1194379829", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
whs730s3 = gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ + 「🟢」 ʏᴇsɪʟ ʙᴏᴅʏ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
whs730 = on
else
gg.clearResults()
gg.setValues(whs730s1)
gg.setValues(whs730s2)
gg.setValues(whs730s3)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ + 「🟢」 ʏᴇsɪʟ ʙᴏᴅʏ ᴅᴇᴠʀᴇ ᴅɪsɪ")
whs730 = off
end
end

function ALLD()
if whsall == off then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("-2 147 086 191", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
whsalls1 = gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
whsalls2 = gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
whsalls3 = gg.getResults(1337)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [All Devices] ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
CLR()
whsall = on
else
gg.clearResults()
gg.setValues(whsalls1)
gg.setValues(whsalls2)
gg.setValues(whsalls3)
gg.clearResults()
gg.toast("ᴡᴀʟʟʜᴀᴄᴋ [All Devices] ᴅᴇᴠʀᴇ ᴅɪsɪ")
whsall = off
end
end

-- -- -- -- -- -- -- -- --   sɪʟᴀʜ ᴍᴇɴᴜ   -- -- -- -- -- -- -- -- --
  
function WeaponMenu()
   MN2 = gg.multiChoice({
   '「🤡」  ʜᴇᴀᴅsʜᴏᴛ\n☞[ᴏʏᴜɴ]',
   '「🎯」  ᴀɪᴍʙᴏᴛ 50ᴍ\n☞[ᴏʏᴜɴ]',
   '「🎯」  ᴀɪᴍʙᴏᴛ 300ᴍ\n☞[ʟᴏʙɪ]',
   '「⚰️」  ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ\n☞[ʟᴏʙɪ]',
   '「🔫」  ʟᴇss ʀᴇᴄᴏɪʟ\n☞[ᴏʏᴜɴ]',
   '「🔫」  ɴᴏ ʀᴇᴄᴏɪʟ\n☞[ʟᴏʙɪ]',
   '「📳」  ᴀɴᴛɪsʜᴀᴋᴇ\n☞[ᴏʏᴜɴ]',
   '「➕」  sᴍᴀʟʟ ᴄʀᴏssʜᴀɪʀ\n☞[ʟᴏʙɪ]',
   '「🧨」  ғᴀsᴛ ʙᴜʟʟᴇᴛ\n☞[ᴏʏᴜɴ]',
   '「🛐」  sɪᴛ sᴄᴏᴘᴇ\n☞[ᴏʏᴜɴ]',
   '「🔙」  🄶🄴🅁🄸',
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
  if MN2 == nil then
  else
  if MN2[1] == true then headmenu()end
  if MN2[2] == true then Aim100()end
  if MN2[3] == true then Aim500()end
  if MN2[4] == true then Magic()end
  if MN2[5] == true then Less()end
  if MN2[6] == true then Recoil()end
  if MN2[7] == true then AntiShake()end
  if MN2[8] == true then Cross()end
  if MN2[9] == true then FastBullet()end
  if MN2[10] == true then SitMenu()end
  if MN2[11] == true then HOME()end
end
  PUBGM = -1
end
-- -- -- -- -- -- -- -- --   Headshot Menu   -- -- -- -- -- -- -- -- --
function headmenu()
   MN3 = gg.choice({
   '〚⛑️〛ʜᴇᴀᴅsʜᴏᴛ 50%',
   '〚⛑️〛ʜᴇᴀᴅsʜᴏᴛ 70%',
   '〚⛑️〛ʜᴇᴀᴅsʜᴏᴛ 100%',
   '〚⛑️〛ᴜʟᴛʀᴀ ʜᴇᴀᴅsʜᴏᴛ',
   '「🔙」  🄶🄴🅁🄸',
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
  if MN3 == nil then
  else
  if MN3 == 1 then head50()end
  if MN3 == 2 then head75()end
  if MN3 == 3 then head100()end
  if MN3 == 4 then head999()end
  if MN3 == 4 then HOME()end
end
  PUBGM = -1
end
  
  function head999()
  gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("200", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(56)
    gg.editAll("-1339", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(" ᴜʟᴛʀᴀ ʜᴇᴀᴅsʜᴏᴛ")
    end
  
function head100()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B64788
setvalue(so+py,16,50)
so=gg.getRangesList('libUE4.so')[1].start
py=58465188
setvalue(so + py,16,0)
gg.toast("ᴋᴀғᴀᴅᴀɴ ᴠᴜʀᴍᴀ %100")
end
  
function head70()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("220", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4740038608910024704", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5306590012668116992", gg.TYPE_QWORD)
  gg.setVisible(false)
  gg.toast("ᴋᴀғᴀᴅᴀɴ ᴠᴜʀᴍᴀ %70")
  gg.clearResults()
end
  
function head50()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4740038608910024704", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5306590012668116992", gg.TYPE_QWORD)
  gg.setVisible(false)
  gg.toast("ᴋᴀғᴀᴅᴀɴ ᴠᴜʀᴍᴀ %50")
  gg.clearResults()
end
  
function Aim100()
    gg.setRanges(8)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
    gg.searchNumber("2,015,175,168.0", gg.TYPE_FLOAT)
    aimbot100value0 = gg.getResults(5)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("ᴀɪᴍʙᴏᴛ 50 ᴍᴇᴛʀᴇ")
end
  
function Aim500()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
    gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-476053504", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
    gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(6)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(6)
    gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
    gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-476053504", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
    gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(6)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("ᴀɪᴍʙᴏᴛ 300 ᴍᴇᴛʀᴇ")
end
  
function Magic()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 62277512
    setvalue(so + py, 16, 42)
    gg.toast("ʙʀᴜᴛᴀʟ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ")
end
  
function Less()
so=gg.getRangesList('libUE4.so')[1].start
py=0x136BDDC
setvalue(so+py,4,0)
gg.toast("ʟᴇss ʀᴇᴄᴏɪʟ")
end
  
function Recoil()
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x136D4F8
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x376E57C
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x381CCE0
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1C113E8
setvalue(so+py,16,1.40129846e-45)
gg.clearResults()
gg.toast("ɴᴏ ʀᴇᴄᴏɪʟ")
end
  
function AntiShake()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("ᴀɴᴛɪsʜᴀᴋᴇ")
  gg.clearResults()
end
  
function Cross()
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1C113E8
setvalue(so+py,16,1.40129846e-45)
gg.clearResults()
gg.toast("sᴍᴀʟʟ ᴄʀᴏssʜᴀɪʀ")
end
  
function FastBullet()
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
  gg.searchNumber(-1883348481058764288.0, gg.TYPE_QWORD)
  gg.getResultsCount()
  gg.toast("ʜɪᴢʟɪ ᴍᴇʀᴍɪ")
  gg.clearResults()
end
-----------------------------------------------------------------------------------------------------------------------
function SitMenu()
   MN4 = gg.multiChoice({
   '「🐒」  ᴏᴛᴜʀ - ɪʟᴇʀɪ\n☞[ᴏʏᴜɴ]',
   '「🤳」  ᴏᴛᴜʀ - ʏᴜᴋᴀʀɪ\n☞[ᴏʏᴜɴ]',
   '「🤳」  ᴏᴛᴜʀ - ʏᴜᴋᴀʀɪ ᴋᴀᴘᴀᴛ\n☞[ᴏʏᴜɴ]',
   '「🚹」  ᴀʏᴀᴋᴛᴀ - ɪʟᴇʀɪ\n☞[ᴏʏᴜɴ]',
   '「🔙」  🄶🄴🅁🄸',
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n🟡 ʀɪsᴋʟɪ ʙᴏ̈ʟᴜ̈ᴍ: ʀᴀɴᴋ ᴋᴀsᴀʀᴋᴇɴ ᴋᴜʟʟᴀɴıʟᴍᴀsı ᴏ̈ɴᴇʀɪʟᴍᴇᴢ 🟡")
  if MN4 == nil then
  else
  if MN4[1] == true then Oturileri()end
  if MN4[2] == true then Oturyukari()end
  if MN4[3] == true then Oturyukarioff()end
  if MN4[4] == true then AyaktaDurma()end
  if MN4[5] == true then HOME()end
end
  PUBGM = -1
end
  
function Oturileri()
  gg.setRanges(gg.REGION_C_BSS)
  gg.clearResults()
  gg.searchNumber("869,711,765D;2;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-10", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("😬😬")
  gg.setVisible(false)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h0AF872B922214CB9EC343A38", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("h22214CB9", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("h00009643", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("♨️Sit-Scope İleri Aktif Edildi.")
  gg.clearResults()
end
  
function Oturyukari()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-0.67914116382599;-0.20633073151112;-0.68966287374496;9.49029350281;0.0064272880554199", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(0)
  gg.searchNumber("9.49029350281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("124", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("🛐 Sit Scope Yukarı Uzayan Kol")
  gg.clearResults()
end
  
function Oturyukarioff()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.toast("🛐 Sit Scope Yukarı Kapatıldı")
  gg.clearResults()
end
  
function AyaktaDurma()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("4848124999984742400", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast("✳️ Stand Scope İleri Uzayan Kol")
  gg.clearResults()
end
-- -- -- -- -- -- -- -- --   sᴘᴇᴇᴅ ᴍᴇɴᴜ   -- -- -- -- -- -- -- -- --
fspeed1 = off
fjump = off

function SpeedMenu()
   MN5 = gg.multiChoice({
   '「🏃」  ғʟᴀsʜ ᴬᶜᴷᵃᵖᵃᵗ\n☞[ᴏʏᴜɴ]'..fspeed1,
   '「🧗」  ᴜᴢᴜɴ ᴀᴛʟᴀᴍᴀ ᴬᶜᴷᵃᵖᵃᵗ\n☞[ᴏʏᴜɴ]'..fjump,
   '「🐍」  ʜɪᴢʟɪ ʏɪʟᴀɴʟᴀ\n☞[ᴏʏᴜɴ]',
   '「🚀」  ᴛᴜᴍ ᴀʀᴀʙᴀʟᴀʀɪ ʜɪᴢʟᴀɴᴅɪʀ\n☞[ᴏʏᴜɴ]',
   '「🔙」  🄶🄴🅁🄸',
  }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
  if MN5 == nil then
  else
  if MN5[1] == true then FlasAc()end
  if MN5[2] == true then UzunAtlama()end
  if MN5[3] == true then KnockSpeed()end
  if MN5[4] == true then SpeedAll()end
  if MN5[5] == true then HOME()end
end
  PUBGM = -1
end
  
function FlasAc()
  if fspeed1 == off then
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("-6.03221444e26;-1.3078764e28;-3.74440972e28;-1.86389771e-20;-1.11445016e28;-9.39921508e20;-1.8331477e27:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.86389771e-20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
fspeed1s1 = gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('ғʟᴀsʜ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ')
fspeed1 = on
else
gg.clearResults()
gg.setValues(fspeed1s1)
gg.clearResults()
gg.toast("ғʟᴀsʜ ᴅᴇᴠʀᴇ ᴅɪsɪ")
fspeed1 = off
end
end
  
function UzunAtlama()
  if fjump == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('16;4,575,657,222,473,777,152;1,065,353,216;17,179,869,188:37', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.searchNumber('4,575,657,222,473,777,152', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(500)
      gg.editAll('4,575,657,222,488,624,988', gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('1,133,903,872;4,611,686,019,455,831,245;1,103,626,240;4,575,657,222,517,817,344:25', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.searchNumber('4,611,686,019,455,831,245', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(500)
      gg.editAll('4,611,686,019,501,674,988', gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
      gg.searchNumber('-6.1526231e27;-1.0070975e28::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber('-6.1526231e27', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      sjumpff1 = gg.getResults(1)
      gg.editAll('0', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast('ᴜᴢᴜɴ ᴀᴛʟᴀᴍᴀ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ')
      fjump = on
    else
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('16;4,575,657,222,488,624,988;1,065,353,216;17,179,869,188:37', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.searchNumber('4,575,657,222,488,624,988', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(500)
      gg.editAll('4,575,657,222,473,777,152', gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('1,133,903,872;4,611,686,019,501,674,988;1,103,626,240;4,575,657,222,517,817,344:25', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.searchNumber('4,611,686,019,501,674,988', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(500)
      gg.editAll('4,611,686,019,455,831,245', gg.TYPE_QWORD)
      gg.clearResults()
      gg.setValues(sjumpff1)
      gg.clearResults()
      gg.clearResults()
      gg.toast('ᴜᴢᴜɴ ᴀᴛʟᴀᴍᴀ ᴅᴇᴠʀᴇ ᴅɪsɪ')
      fjump = off
    end
  end
  
function KnockSpeed()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("ʜɪᴢʟɪ ʏɪʟᴀɴʟᴀ")
  gg.clearResults()
end
  
function SpeedAll()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.63", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("ʜɪᴢʟɪ ᴀʀᴀᴄ")
  gg.clearResults()
end
  
function Maxur()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.647058857", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("sɪɴɪʀsɪᴢ ʙᴇɴᴢɪɴ")
  gg.clearResults()
end
-----------------------------------------------------------------------------------------------------------------------
antenag = off
ipadv = off
nfog = off
bsky = off

function GameMenu()
    MN6 = gg.multiChoice({
      "「📡」 ᴀɴᴛᴇɴᴬᶜᴷᵃᵖᵃᵗ\n☞[ʟᴏʙɪ+ᴏʏᴜɴ]"..antenag,
      "「🎥」 ɪᴘᴀᴅ ᴍᴏᴅ ᴬᶜᴷᵃᵖᵃᵗ\n☞[ᴏʏᴜɴ]"..ipadv,
      "「📽️」 BSN ɪᴘᴀᴅ ᴍᴏᴅ\n☞[ᴏʏᴜɴ]",
      "「🌫」 sɪs ᴋᴀʟᴅɪʀ ᴬᶜᴷᵃᵖᵃᵗ\n☞[ᴏʏᴜɴ]"..nfog,
      "「🌱」 ᴄɪᴍ ᴋᴀʟᴅɪʀ\n☞[ᴏʏᴜɴ]",
      "「🌲」 ᴄɪᴍ - ᴀɢᴀᴄ ᴋᴀʟᴅɪʀ\n☞[ᴏʏᴜɴ]",
      "「🌃」 sɪʏᴀʜ ɢᴏᴋʏᴜᴢᴜ ᴬᶜᴷᵃᵖᵃᵗ\n☞[ᴏʏᴜɴ]"..bsky,
      "「🎐」 ʜɪᴢʟɪ ᴘᴀʀᴀsᴜᴛ\n☞[ᴀᴅᴀ]",
      "「🔙」 🄶🄴🅁🄸"
    }, nil, "           ⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
    if MN6 == nil then
    else
      if MN6[1] == true then
        anten()
    end
      if MN6[2] == true then
        ipad()
    end
      if MN6[3] == true then
        bsnipad()
    end
      if MN6[4] == true then
        sis()
    end
      if MN6[5] == true then
        cim()
    end
      if MN6[6] == true then
        agac()
    end
      if MN6[7] == true then
        blacksky()
    end
      if MN6[8] == true then
        longp()
    end
      if MN6[9] == true then
        HOME()
    end
  end
    PUBGM = -1
end
  
function anten()
if antenag == off then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
antenags1 = gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ᴀɴᴛᴇɴ ᴀᴄɪɪᴋ")
antenag = on
else
gg.clearResults()
gg.setValues(antenags1)
gg.clearResults()
gg.toast("ᴀɴᴛᴇɴ ᴅᴇᴠʀᴇ ᴅɪsɪ")
antenag = off
end
end
  
function ipad()
    if ipadv == off then
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x381FCB0
setvalue(so+py,16,265)
gg.clearResults()
gg.toast("ɪᴘᴀᴅ ᴍᴏᴅ ᴀᴄɪᴋ")
ipadv = on
else
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x381FCB0
setvalue(so+py,16,390)
gg.clearResults()
gg.toast("ɪᴘᴀᴅ ᴍᴏᴅ ᴅᴇᴠʀᴇ ᴅɪsɪ")
ipadv = off
end
end
  
function bsnipad()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("360.0;0.00100000005;-9.38575022e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("360.0;0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-1.4235595e-27;254.70928955078", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("ʙsɴ ɪᴘᴀᴅ ᴍᴏᴅ")
  gg.setVisible(false)
  gg.clearResults()
end
  
function sis()
      if nfog == off then
      gg.clearResults()
      so = gg.getRangesList('libUE4.so')[1].start
      py = 46351560
      setvalue(so + py, 4, 0)
      so = gg.getRangesList('libUE4.so')[1].start
      py = 46358252
      setvalue(so + py, 4, 0)
      gg.clearResults()
      gg.toast('sɪs ᴋᴀʟᴅɪʀ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ')
      nfog = on
      else
      gg.clearResults()
      so = gg.getRangesList('libUE4.so')[1].start
      py = 46351565
      setvalue(so + py, 4, 0)
      gg.clearResults()
      gg.toast('sɪs ᴋᴀʟᴅɪʀ ᴅᴇᴠʀᴇ ᴅɪsɪ')
      nfog = off
    end
  end
  
function cim()
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x2559FE8
  setvalue(so+py,4,0)
  gg.toast("ᴄɪᴍʟᴇʀ ᴋᴀʟᴅɪʀɪʟᴅɪ")
end
  
function agac()
    gg.clearResults()
    if gg.REGION_VIDEO == nil then
      VB = gg.REGION_BAD
    else
      VB = gg.REGION_VIDEO
  end
    gg.setRanges(VB)
    gg.searchNumber("0.00390625;1;0.99900001287;2", gg.TYPE_FLOAT, false)
    gg.searchNumber("1", gg.TYPE_FLOAT, false)
    NOTROFF1 = gg.getResults(30)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.000005", gg.TYPE_FLOAT, false)
    NOTROFF2 = gg.getResults(30)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("ᴄɪᴍ - ᴀɢᴀᴄ ᴋᴀʟᴅɪʀ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
end
  
function longp(...)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.75;150;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("30", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("0.75;150;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.toast("ʜɪᴢʟɪ ᴘᴀʀᴀsᴜᴛ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
end
  
function blacksky()
if bsky == off then
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.4028235e38;0.05000000075::5", gg.TYPE_FLOAT, false)
gg.searchNumber("0.05000000075", gg.TYPE_FLOAT, false)
bskys1 = gg.getResults(30)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("ʙʟᴀᴄᴋ sᴋʏ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ")
bsky = on
else
gg.clearResults()
gg.setValues(bskys1)
gg.clearResults()
gg.toast("ʙʟᴀᴄᴋ sᴋʏ ᴅᴇᴠʀᴇ ᴅɪsɪ")
bsky = off
end
end
----------------------------------------------------------------------------------------------
function JumpCarMenu()
   JC = gg.choice({
  '「⬆️」  ᴢɪᴘʟᴀʏᴀɴ ᴀʀᴀʙᴀʟᴀʀ\n☞[ᴏʏᴜɴ]',
  '「🔙」  ɢᴇʀɪ',
  }, nil, "           ⚪ 𝙽𝙾𝚅??  𝙲𝙷𝙴𝙰𝚃𝚂 ⚪\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬")
  if JC == nil then
  else
  if JC == 1 then flycar()end
  if JC == 2 then HOME()end
end
  PUBGM = -1
end
  
function flycar()
    gg.setVisible(false)
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.setVisible(false)
    gg.searchNumber("-980.0F;4,000.0F;0.30000001192F;5.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    gg.refineNumber("-980.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.setVisible(false)
    gg.editAll("25000", gg.TYPE_FLOAT)
    gg.sleep(500)
    gg.toast("ᴀʀᴀᴄ ᴢɪᴘʟᴀᴛ")
    gg.setVisible(false)
    gg.editAll("-980", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.toast("ᴀʀᴀᴄ ᴢɪᴘʟᴀᴛ ᴀᴋᴛɪғ")
end
-- -- -- -- -- -- -- -- -- -- --   ᴄɪᴋɪs   -- -- -- -- -- -- -- -- -- -- --
function Cikis()
print("⚪ 𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂 | ʜɪʟᴇɴɪɴ ᴇɴ ɪʏɪ ᴀᴅʀᴇsɪ ⚪")
print(" ʙɪᴢɪ ᴛᴇʀᴄɪʜ ᴇᴛᴛɪɢɪɴɪᴢ ɪᴄɪɴ ᴛᴇsᴇᴋᴋᴜʀ ᴇᴅᴇʀɪᴍ 🥰")
print("\n✩▬▬▬▬▬▬▬▬▬▬▬▬▬▬✩\n╔═══════════════╗\n👨‍🎓 Cᴏᴅᴇʀ ʙʏ ɴᴏᴠᴀᴄʜᴇᴀᴛs\n➤ Tᴇʟᴇɢʀᴀᴍ\n➡️   @ɴᴏᴠᴀʜᴀᴄᴋᴘᴍ\n➡️   @ɴᴏᴠᴀᴄʜᴇᴀᴛs\n➤ TɪᴋTᴏᴋ \n➡️   @ɴᴏᴠᴀʜᴀᴄᴋ66\n➤  YᴏᴜTᴜʙᴇ \n➡️   𝙽𝙾𝚅𝙰  𝙲𝙷𝙴𝙰𝚃𝚂\n╚═══════════════╝\n✩▬▬▬▬▬▬▬▬▬▬▬▬▬▬✩\n")
  gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
end
while true do
  if gg.isVisible(true) then
    PUBGMH = 1
    gg.setVisible(false)
end
  if PUBGMH == 1 then
   HOME()
end
end