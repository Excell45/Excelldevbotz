import fetch from 'node-fetch'
let handler = async (m, { conn, args }) => {
   let response = args.join(' ').split('|')
  if (!args[0]) throw 'ᴍᴀꜱᴜᴋᴋᴀɴ ᴛᴇxᴛ'
  m.reply('ᴘʀᴏꜱᴇꜱ...')
  let res = `https://api.erdwpe.com/api/photooxy/sweet-candy?text=${response[0]}`
  conn.sendFile(m.chat, res, 'sweet-candy.jpg', `ꜱᴜᴅᴀʜ ᴊᴀᴅɪ`, m, false)
}
handler.help = ['sweet-candy'].map(v => v + ' <text>')
handler.tags = ['logo']
handler.command = /^(sweet-candy)$/i
handler.limit = false
//buatan zyko-md, jgn hapus atuh 😊
export default handler
