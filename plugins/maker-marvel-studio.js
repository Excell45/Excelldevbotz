import fetch from 'node-fetch'
let handler = async (m, { conn, args }) => {
   let response = args.join(' ').split('|')
  if (!args[0]) throw 'ᴍᴀꜱᴜᴋᴋᴀɴ ᴛᴇxᴛ'
  m.reply('ᴘʀᴏꜱᴇꜱ...')
  let res = `https://api.zahwazein.xyz/textpro/marvel?text=${response[0]}&text2=${response[1]}&apikey=6aa8e658bd31`
  conn.sendFile(m.chat, res, 'marvel.jpg', `ꜱᴜᴅᴀʜ ᴊᴀᴅɪ`, m, false)
}
handler.help = ['marvel-studio'].map(v => v + ' <text>')
handler.tags = ['logo']
handler.command = /^(marvel-studio)$/i
handler.limit = false
//buatan zyko-md, jgn hapus atuh 😊
export default handler

