import fetch from 'node-fetch'
import fs from 'fs'
import { promises, readFileSync } from 'fs'
import { join } from 'path'
import { xpRange } from '../lib/levelling.js'
import moment from 'moment-timezone'

let handler = async(m, { conn, groupMetadata, usedPrefix, text, args, command }) => {
let date = moment.tz('Asia/Jakarta').format("dddd, Do MMMM, YYYY")
let time = moment.tz('Asia/Jakarta').format('HH:mm:ss') 
    let who = m.mentionedJid && m.mentionedJid[0] ? m.mentionedJid[0] : m.fromMe ? conn.user.jid : m.sender
    let { exp, limit, level, role, money, lastclaim, lastweekly, registered, regTime, age, banned, pasangan } = global.db.data.users[who]
    let { min, xp, max } = xpRange(level, global.multiplier)
    let pp = hwaifu.getRandom()
    let name = await conn.getName(who)
    let ucpn = `${ucapan()}`
    let emot = `${pickRandom(['⎔', '◈▻', '✦', 'ᯬ', '⭔', '◉', '⬟', '᭻', '〆', '々', '⛥', '✗',])}`
    let users = Object.entries(global.db.data.users).filter(user => user[1].banned)
    
    let totalf = Object.values(plugins).filter(v => v.help && !v.disabled).map(v => v.help).flat(1)
        if (typeof global.db.data.users[who] == "undefined") {
      global.db.data.users[who] = {
        exp: 0,
        limit: 10,
        lastclaim: 0,
        registered: false,
        name: conn.getName(m.sender),
        age: -1,
        regTime: -1,
        afk: -1,
        afkReason: '',
        banned: false,
        level: 0,
        lastweekly: 0,
        role: 'Warrior V',
        autolevelup: false,
        money: 0,
        pasangan: "",
      }
     }
  
  let cap = `
          *『 AMELIA BOTZ 』*
         
乂  「 ${name} 」

乂  *I N F O - B O T*\n\n• Sistem otomatis (WhatsApp Bot) yang dapat membantu untuk melakukan sesuatu, mencari dan mendapatkan data/informasi hanya melalui WhatsApp.\n\n乂   *N O T E* \n\n• Gunakan bot di private message agar bot merespon dengan cepat, \n\n• Beri jeda yah agar terhindar dari banned😇\n\n*📮 *Note:* _Jika menemukan bug, error atau kesulitan dalam penggunaan silahkan laporkan/tanyakan kepada Owner dengan cara ketik .report banh tik tok audio error_
  `
let fpayment = {
  "key": {
    "remoteJid": "0@s.whatsapp.net",
    "fromMe": false,
    "id": "BAE595C600522C9C",
    "participant": "0@s.whatsapp.net"
  },
  "message": {
    "requestPaymentMessage": {
      "currencyCodeIso4217": "USD",
      "amount1000": fsizedoc,
      "requestFrom": "0@s.whatsapp.net",
      "noteMessage": {
        "extendedTextMessage": {
          "text": "AMELIA"
        }
      },
      "expiryTimestamp": fsizedoc,
      "amount": {
        "value": fsizedoc,
        "offset": fsizedoc,
        "currencyCode": "USD"
      }
    }
  }
}
let fliveLoc = {
            key: {
            participant : '0@s.whatsapp.net'},
            message: { "liveLocationMessage": { "caption": wm,"h": `${bottime}`, 'jpegThumbnail': fs.readFileSync('./media/menu.jpg')}}
           }
               
let info = fs.readFileSync('./mp3/ssstik.io_1674215908132.mp3')
let fliveLoc22 = {
            key: {
            participant : '0@s.whatsapp.net'},
            message: { "liveLocationMessage": { "title": gcname,"h": bottime, 'jpegThumbnail': fs.readFileSync('./media/menu.jpg')}}
           }
/*let litch = fs.readFileSync('./mp3/Bot.opus')
let imgloc = 'https://telegra.ph/file/4d4f611baff7d92ec5e81.mp4'*/
conn.send3ButtonDoc(m.chat, cap, botdate, 'Aʟʟ Mᴇɴᴜ', '.? all', 'Lɪsᴛ Mᴇɴᴜ', '.tesm', 'Mᴏᴅᴇʟ Mᴇɴᴜ', '.modelmenu', ftoko, {
			contextInfo: {
				forwardingScore: fsizedoc,
				externalAdReply: {
                    body: bottime,
    containsAutoReply: true,
    mediaType: 1,
    mediaUrl: 'https://instagram.com/l4c1f2r', 
    renderLargerThumbnail: true,
    showAdAttribution: false,
    sourceId: wm,
    sourceType: 'PDF',
    previewType: 'PDF',
    sourceUrl: sgc,
    thumbnail: await (await fetch(thumb)).buffer(),
    thumbnailUrl: sgc,
    title: gcname,
				}
			}
})
await conn.reply(m.chat, info, fvn, { contextInfo: { externalAdReply: { showAdAttribution: false,
    mediaUrl: syt,
    mediaType: 1, 
    description: syt,
    title: `Jangan DiSpam`,
    body: `⚠️ WARNING ⚠️`,
    thumbnail: await (await fetch(thumb)).buffer(),
    sourceUrl: syt
  }
  } }) 
          }
/*let Vid = 'https://telegra.ph/file/4d4f611baff7d92ec5e81.mp4'
await conn.send2ButtonVid(m.chat, pp, cap, botdate, '𝐋𝐢𝐬𝐭𝐌𝐞𝐧𝐮', '.listmenu', '𝐃𝐚𝐬𝐛𝗼𝐚𝐫𝐝', '.db', m, adReply)*/

handler.command = /^(menu|help)$/i

export default handler

function pickRandom(list) {
     return list[Math.floor(Math.random() * list.length)]
  }

//----------- FUNCTION -------


const more = String.fromCharCode(8206)
const readMore = more.repeat(4001)

function clockString(ms) {
  let h = isNaN(ms) ? '--' : Math.floor(ms / 3600000)
  let m = isNaN(ms) ? '--' : Math.floor(ms / 60000) % 60
  let s = isNaN(ms) ? '--' : Math.floor(ms / 1000) % 60
  return [h, ' H ', m, ' M ', s, ' S '].map(v => v.toString().padStart(2, 0)).join('')
}
function clockStringP(ms) {
  let ye = isNaN(ms) ? '--' : Math.floor(ms / 31104000000) % 10
  let mo = isNaN(ms) ? '--' : Math.floor(ms / 2592000000) % 12
  let d = isNaN(ms) ? '--' : Math.floor(ms / 86400000) % 30
  let h = isNaN(ms) ? '--' : Math.floor(ms / 3600000) % 24
  let m = isNaN(ms) ? '--' : Math.floor(ms / 60000) % 60
  let s = isNaN(ms) ? '--' : Math.floor(ms / 1000) % 60
  return [ye, ' *Years 🗓️*\n',  mo, ' *Month 🌙*\n', d, ' *Days ☀️*\n', h, ' *Hours 🕐*\n', m, ' *Minute ⏰*\n', s, ' *Second ⏱️*'].map(v => v.toString().padStart(2, 0)).join('')
}
function ucapan() {
  const time = moment.tz('Asia/Jakarta').format('HH')
  let res = "Sudah Dini Hari Kok Belum Tidur Kak? 🥱"
  if (time >= 4) {
    res = "Selamat Pagi"
  }
  if (time >= 10) {
    res = "Selamat Siang️"
  }
  if (time >= 15) {
    res = "Selamat Sore"
  }
  if (time >= 18) {
    res = "Selamat Malam"
  }
  return res
}

function wish() {
    let wishloc = ''
  const time = moment.tz('Asia/Kolkata').format('HH')
  wishloc = ('Hi')
  if (time >= 0) {
    wishloc = ('Night Rider')
  }
  if (time >= 4) {
    wishloc = ('Good Morning')
  }
  if (time >= 12) {
    wishloc = ('Good Afternoon')
  }
  if (time >= 16) {
    wishloc = ('️Good Evening')
  }
  if (time >= 23) {
    wishloc = ('Night Rider')
  }
  return wishloc
}

async function genProfile(conn, m) {
  let font = await jimp.loadFont('./names.fnt'),
    mask = await jimp.read('https://i.imgur.com/552kzaW.png'),
    welcome = await jimp.read(thumbnailUrl.getRandom()),
    avatar = await jimp.read(await conn.profilePictureUrl(m.sender, 'image').catch(() => 'https://telegra.ph/file/24fa902ead26340f3df2c.png')),
    status = (await conn.fetchStatus(m.sender).catch(console.log) || {}).status?.slice(0, 30) || 'Not Detected'

    await avatar.resize(460, 460)
    await mask.resize(460, 460)
    await avatar.mask(mask)
    await welcome.resize(welcome.getWidth(), welcome.getHeight())

    await welcome.print(font, 550, 180, 'Name:')
    await welcome.print(font, 650, 255, m.pushName.slice(0, 25))
    await welcome.print(font, 550, 340, 'About:')
    await welcome.print(font, 650, 415, status)
    await welcome.print(font, 550, 500, 'Number:')
    await welcome.print(font, 650, 575, PhoneNumber('+' + m.sender.split('@')[0]).getNumber('international'))
    return await welcome.composite(avatar, 50, 170).getBufferAsync('image/png')
}
