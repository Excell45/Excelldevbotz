import fetch from 'node-fetch'
let handler = async (m, { conn, args }) => {
   let response = args.join(' ').split('|')
  if (!args[0]) throw 'ᴍᴀꜱᴜᴋᴋᴀɴ ᴛᴇxᴛ'
  m.reply('ᴘʀᴏꜱᴇꜱ...')
  let res = `https://violetics.pw/api/textpro/3d-text-sub-zombie?apikey=0a5f-75fe-5ea4&text=${response[0]}`
  conn.sendFile(m.chat, res, '3d-text-sub-zombie.jpg', `ꜱᴜᴅᴀʜ ᴊᴀᴅɪ`, m, false)
}
handler.help = ['3d-text-sub-zombie'].map(v => v + ' <text>')
handler.tags = ['logo']
handler.command = /^(3d-text-sub-zombie)$/i
handler.limit = false
//buatan zyko-md, jgn hapus atuh 😊
export default handler
