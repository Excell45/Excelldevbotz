import fetch from 'node-fetch'

let handler = async (m, { conn, command }) => {
	let url = 'https://web-production-3ae2.up.railway.app/api/wallpaper/yuki?apikey=APIKEY'
	conn.sendButton(m.chat, `${command}`, wm, await(await fetch(url)).buffer(), [['🔁Next🔁',`.${command}`]],m)
}
handler.command = /^(yuki)$/i
handler.tags = ['anime']
handler.help = ['yuki']
handler.premium = false
handler.limit = true

export default handler